<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Arrivals</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="dropdowncss.css">
</head>
<body>
	<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test1", "root", "maltose@247A");
	PreparedStatement ps = con.prepareStatement("select * from Arrivals where book_price between ? AND ?");
	%>
	<jsp:include page="navbar.jsp"></jsp:include>
	
	<div class="dropdown">
            <button class="btn">Filter</button>
            <div class="dropdown-content">
            <form action="filter.jsp" method="get">
            <label class="container">Please Select the price Range</label>
            <label class="container">₹350-₹450
                <input type="radio" checked="checked" name="filter" value="350 450">
                <span class="checkmark"></span>
            </label>
            <label class="container">₹450-₹550
                <input type="radio" checked="checked" name="filter" value="450 550">
                <span class="checkmark"></span>
            </label>
            <label class="container">₹550-₹650
                <input type="radio" checked="checked" name="filter" value="550 650">
                <span class="checkmark"></span>
            </label>
            <input type="submit" value="Apply" class="btn">
            </form>
            </div>
     </div>
	
	
	<%
	String filter=request.getParameter("filter");
	String filters[]=filter.split(" ");
	int val1=Integer.parseInt(filters[0]);
	int val2=Integer.parseInt(filters[1]);
	
	ps.setInt(1, val1);
	ps.setInt(2, val2);
	out.println("<section class='arrivals' id='arrivals'> <h1 class='heading'> <span>new arrivals</span> </h1>");
	ResultSet rs=ps.executeQuery();
	while (rs.next()) {
		String name = rs.getString(2);
		String photo = rs.getString(3);
		float price = rs.getFloat(4);

		String[] namesp = name.split(" ");
		/* out.println("<h2>" + name + "</h2>");
		out.println("<img src=" + photo + ">");
		out.println("<h4>" + price + "</h4>"); */
		out.println("<div class='swiper arrivals-slider'>");
		out.println("<div class='swiper-wrapper'>");
		out.println("<a href='#' class='swiper-slide box'>");
		out.println("<div class='image'>");
		out.println("<img src=" + photo + "alt=''>");
		out.println("</div>");
		out.println("<div class='content'>");
		if (namesp.length > 2) {
			int i;
			if (namesp.length % 2 == 0)
		i = (namesp.length / 2) - 1;
			else
		i = (namesp.length / 2);
			String s1 = "";
			String s2 = "";
			for (int j = 0; j <= i; j++) {
		s1 += namesp[j] + " ";
			}
			for (int j = i + 1; j < namesp.length; j++) {
		s2 += namesp[j] + " ";
			}
			out.println("<h3>" + s1 + "</h3>");
			out.println("<h3>" + s2 + "</h3>");

		} else
			out.println("<h3>" + name + "</h3>");
		out.println("<div class='price'> ₹" + price + "<span>₹"+(price*1.5)+"</span></div>");
		out.println("</div>");
		out.println("</a>");
		out.println("</div>");
		out.println("</div>");
	}
	out.println("</section>");
	%>
	<script src="script.js"></script>
</body>
</html>