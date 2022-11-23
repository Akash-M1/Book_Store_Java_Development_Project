<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Bookly</title>


<style>        
	.dropbtn 
	{
    	 background-color: #4CAF50;
         color: white;
         padding: 16px;
         font-size: 16px;
         border: none;
         cursor: pointer;
			        
	 }
    .dropdown {
         position: relative;
      display: inline-block;
     }
     
     .dropdown-content {
       display: none;
       position: absolute;
       background-color: #f9f9f9;
       min-width: 160px;
       box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
       z-index: 1;
     }
     
     .dropdown-content a {
       color: black;
       padding: 10px 13px;
       text-decoration: none;
       display: block;
     }       
     .dropdown-content a:hover {background-color: #f1f1f1}

     .dropdown:hover .dropdown-content {
       display: block;
     }

</style>
</head>
<body>
	<%
	String name=(String)session.getAttribute("name");
	%>
	<%
	if(name!=null){
	out.println(
			 "<!-- header section starts  -->\n"
			+ "\n"
			+ "<header class=\"header\">\n"
			+ "\n"
			+ "    <div class=\"header-1\">\n"
			+ "\n"
			+ "        <a href=\"#\" class=\"logo\"> <i class=\"fas fa-book\"></i> bookly </a>\n"
			+ "\n"
			+ "        <form action=\"\" class=\"search-form\">\n"
			+ "            <input type=\"search\" name=\"\" placeholder=\"search here...\" id=\"search-box\">\n"
			+ "            <label for=\"search-box\" class=\"fas fa-search\"></label>\n"
			+ "        </form>\n"
			+ "\n");	
			out.println("  <div class=\"icons\">\n"
			+ "            <div id=\"search-btn\" class=\"fas fa-search\"></div>\n"
			+ "            <a href=\"#\" class=\"fas fa-heart\"></a>\n"
			+ "            <a href=\"#\" class=\"fas fa-shopping-cart\"></a>\n"
			+ "				<form action=\"logout.jsp\" style=\"display:inline\">"
			+ "            <div class=\"dropdown\">\n"
			+ "                <div id=\"login-btn\" class=\"fas fa-user\">"+" "+name+"</div>\n"
			+ "                <div class=\"dropdown-content\">\n"
			+ "                <!-- <a href=\"index.html\" onclick=\"clearSession()\">Log Out</a> -->\n"
			+ "                <button type=\"submit\" class=\"btn\">Log Out</button>"
			+ "                </div>\n"
			+ "            </div>\n"
			+ "			   </form> "
			+ "        </div>\n"
			+ "\n"
			+ "    </div>\n"
			+ "\n");
			out.println("<div class=\"header-2\">\n"
			+ "        <nav class=\"navbar\">\n"
			+ "            <a href=\"index.jsp\">home</a>\n"
			+ "            <a href=\"feature.jsp\">featured</a>\n"
			+ "            <a href=\"arrivals.jsp\" target=\"blank\">arrivals</a>\n"
			+ "            <a href=\"index.jsp\">reviews</a>\n"
			+ "            <a href=\"blogs.jsp\">blogs</a>\n"
			+ "        </nav>\n"
			+ "    </div>\n"
			+ "\n"
			+ "</header>\n"
			+ "\n"
			+ "<!-- header section ends -->\n"
			+ "\n"
			+ "<!-- bottom navbar  -->\n"
			+ "\n"
			+ "<nav class=\"bottom-navbar\">\n"
			+ "    <a href=\"#home\" class=\"fas fa-home\"></a>\n"
			+ "    <a href=\"feature.jsp\" class=\"fas fa-list\"></a>\n"
			+ "    <a href=\"arrivals.jsp\" class=\"fas fa-tags\"></a>\n"
			+ "    <a href=\"#reviews\" class=\"fas fa-comments\"></a>\n"
			+ "    <a href=\"blogs.jsp\" class=\"fas fa-blog\"></a>\n"
			+ "</nav>\n"
			+ "\n"
			+ "<!-- login form  -->\n"
			+ "\n"
			+ "<div class=\"login-form-container\">\n"
			+ "\n"
			+ "    <div id=\"close-login-btn\" class=\"fas fa-times\"></div>\n"
			+ "\n"
			+ "    <form action=\"login\" name=\"myform\" method=\"post\">\n"
			+ "        <h3>sign in</h3>\n"
			+ "        <span>Email Id</span>\n"
			+ "        <input type=\"email\" name=\"name\" class=\"box\" placeholder=\"enter your email\" id=\"\">\n"
			+ "        <span>password</span>\n"
			+ "        <input type=\"password\" name=\"password\" class=\"box\" placeholder=\"enter your password\" id=\"\">\n"
			+ "        <div class=\"checkbox\">\n"
			+ "            <input type=\"checkbox\" name=\"\" id=\"remember-me\">\n"
			+ "            <label for=\"remember-me\"> remember me</label>\n"
			+ "        </div>\n"
			+ "        <input type=\"submit\" value=\"sign in\" class=\"btn\">\n"
			+ "        <p>don't have an account ? <a href=\"register.jsp\">create one</a></p>\n"
			+ "    </form>\n"
			+ "\n"
			+ "</div>\n");
	}
	else{
		out.println("<header class=\"header\">\n"
				+ "\n"
				+ "		<div class=\"header-1\">\n"
				+ "\n"
				+ "			<a href=\"#\" class=\"logo\"> <i class=\"fas fa-book\"></i> bookly\n"
				+ "			</a>\n"
				+ "\n"
				+ "			<form action=\"\" class=\"search-form\">\n"
				+ "				<input type=\"search\" name=\"\" placeholder=\"search here...\"\n"
				+ "					id=\"search-box\"> <label for=\"search-box\"\n"
				+ "					class=\"fas fa-search\"></label>\n"
				+ "			</form>\n"
				+ "\n"
				+ "			<div class=\"icons\">\n"
				+ "				<div id=\"search-btn\" class=\"fas fa-search\"></div>\n"
				+ "				<a href=\"#\" class=\"fas fa-heart\"></a> <a href=\"#\"\n"
				+ "					class=\"fas fa-shopping-cart\"></a>\n"
				+ "				<div id=\"login-btn\" class=\"fas fa-user\"></div>\n"
				+ "			</div>\n"
				+ "\n"
				+ "		</div>\n"
				+ "\n"
				+ "		<div class=\"header-2\">\n"
				+ "			<nav class=\"navbar\">\n"
				+ "				<a href=\"index.jsp\">home</a> <a href=\"feature.jsp\">featured</a> <a\n"
				+ "					href=\"arrivals.jsp\" target=\"blank\">arrivals</a> <a href=\"index.jsp\">reviews</a>\n"
				+ "				<a href=\"blogs.jsp\">blogs</a>\n"
				+ "			</nav>\n"
				+ "		</div>\n"
				+ "\n"
				+ "	</header>\n"
				+ "\n"
				+ "	<!-- header section ends -->\n"
				+ "\n"
				+ "	<!-- bottom navbar  -->\n"
				+ "\n"
				+ "	<nav class=\"bottom-navbar\">\n"
				+ "		<a href=\"#home\" class=\"fas fa-home\"></a> <a href=\"feature.jsp\"\n"
				+ "			class=\"fas fa-list\"></a> <a href=\"arrivals.jsp\" class=\"fas fa-tags\"></a>\n"
				+ "		<a href=\"#reviews\" class=\"fas fa-comments\"></a> <a href=\"blogs.jsp\"\n"
				+ "			class=\"fas fa-blog\"></a>\n"
				+ "	</nav>\n"
				+ "\n"
				+ "\n"
				+ "	<div class=\"login-form-container\">\n"
				+ "\n"
				+ "		<div id=\"close-login-btn\" class=\"fas fa-times\"></div>\n"
				+ "\n"
				+ "		<form action=\"login\" name=\"myform\" method=\"post\">\n"
				+ "			<h3>sign in</h3>\n"
				+ "			<span>Email Id</span> <input type=\"email\" name=\"email\" class=\"box\"\n"
				+ "				placeholder=\"enter your email\" id=\"\"> <span>password</span>\n"
				+ "			<input type=\"password\" name=\"pwd\" class=\"box\"\n"
				+ "				placeholder=\"enter your password\" id=\"\">\n"
				+ "			<div class=\"checkbox\">\n"
				+ "				<input type=\"checkbox\" name=\"\" id=\"remember-me\"> <label\n"
				+ "					for=\"remember-me\"> remember me</label>\n"
				+ "			</div>\n"
				+ "			<input type=\"submit\" value=\"sign in\" class=\"btn\">\n"
				+ "			<p>\n"
				+ "				don't have an account ? <a href=\"register.jsp\">create one</a>\n"
				+ "			</p>\n"
				+ "		</form>\n"
				+ "		\n"
				+ "\n"
				+ "	</div>");
	}
	%>
</body>
</html>