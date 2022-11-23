
import java.io.IOException;
import java.io.PrintWriter;
import java.security.spec.KeySpec;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class SigninServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static PreparedStatement ps;
	private static final String SECRET_KEY = "my_super_secret_key_ho_ho_ho";
	private static final String SALT = "ssshhhhhhhhhhh!!!!";

	public void init(ServletConfig config) throws ServletException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test1", "root", "maltose@247A");
			ps = con.prepareStatement("select * from login where email=?");
		} catch (Exception ex) {
			System.out.println("Error!! " + ex);
		}
	}

	public static String decrypt(String strToDecrypt) {
		try {
			byte[] iv = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
			IvParameterSpec ivspec = new IvParameterSpec(iv);
			SecretKeyFactory factory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256");
			KeySpec spec = new PBEKeySpec(SECRET_KEY.toCharArray(), SALT.getBytes(), 65536, 256);
			SecretKey tmp = factory.generateSecret(spec);
			SecretKeySpec secretKey = new SecretKeySpec(tmp.getEncoded(), "AES");

			Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5PADDING");
			cipher.init(Cipher.DECRYPT_MODE, secretKey, ivspec);
			return new String(cipher.doFinal(Base64.getDecoder().decode(strToDecrypt)));
		} catch (Exception e) {
			System.out.println("Error while decrypting: " + e.toString());
		}
		return null;
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		
		try {
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				String user = rs.getString(1);
				String pwd1 = rs.getString(4);
				String dpwd = decrypt(pwd1);
				if(pwd.equals(dpwd)) {
					HttpSession session = request.getSession();
					session.setAttribute("name", user);
					response.setContentType("text/html");
					RequestDispatcher rd = request.getRequestDispatcher("subscribe.jsp");
					rd.include(request, response);
				}
				else {
					PrintWriter out = response.getWriter();
					out.println("<p style=color:red;font-size:18px;text-align:center>Invalid Password</p>");
					RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
					rd.include(request, response);
				}
			} 
			else {
				PrintWriter out = response.getWriter();
				out.println("<p style=color:red;font-size:18px;text-align:center>Sorry User does not exist</p>");
				RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
				rd.include(request, response);
			}
		} catch (Exception ex) {
			System.out.println("Error!! " + ex);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
