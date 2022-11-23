
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.security.spec.KeySpec;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Base64;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static PreparedStatement ps;
	private static final String SECRET_KEY = "my_super_secret_key_ho_ho_ho";
	private static final String SALT = "ssshhhhhhhhhhh!!!!";

	public void init(ServletConfig config) throws ServletException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test1", "root", "maltose@247A");
			ps = con.prepareStatement("insert into login values(?,?,?,?);");
		} catch (Exception ex) {
			System.out.println("Error!! " + ex);
		}
	}

	public static String encrypt(String strToEncrypt) {
		try {
			byte[] iv = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
			IvParameterSpec ivspec = new IvParameterSpec(iv);
			SecretKeyFactory factory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256");
			KeySpec spec = new PBEKeySpec(SECRET_KEY.toCharArray(), SALT.getBytes(), 65536, 256);
			SecretKey tmp = factory.generateSecret(spec);
			SecretKeySpec secretKey = new SecretKeySpec(tmp.getEncoded(), "AES");

			Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
			cipher.init(Cipher.ENCRYPT_MODE, secretKey, ivspec);
			return Base64.getEncoder().encodeToString(cipher.doFinal(strToEncrypt.getBytes(StandardCharsets.UTF_8)));
		} catch (Exception e) {
			System.out.println("Error while encrypting: " + e.toString());
		}
		return null;
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String pwd = request.getParameter("psw");
		String rpwd = request.getParameter("pswrepeat");
		PrintWriter out = response.getWriter();
		String epwd=encrypt(pwd);
		try {
			if (!pwd.equals(rpwd)) {
				out.println("<p style=color:red;font-size:18px;text-align:center>Passwords not matching</p>");
				RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
				rd.include(request, response);
			}
			if (pwd.length() < 6) {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Password Should be of min length 6');");
				out.println("</script>");
			} else if (pwd.equals(rpwd)) {
				ps.setString(1, fname);
				ps.setString(2, lname);
				ps.setString(3, email);
				ps.setString(4, epwd);
				int n = ps.executeUpdate();
				if (n > 0) {
					out.println("<p style=color:red;font-size:18px;text-align:center>Registeration Successfull</p>");
					RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
					rd.include(request, response);
				}
			}
		} catch (Exception ex) {
			System.out.println("Error!! " + ex);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
