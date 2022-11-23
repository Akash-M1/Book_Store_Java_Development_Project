<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Create your account</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="registercss.css">
</head>
<body>
	
	<%
		session.removeAttribute("name");
	%>
	
    <jsp:include page="navbar.jsp"></jsp:include>

    <form action="register" name="myform">
    <div id="formid">
        <h1>Register</h1>
        <p>Please fill in this form to create an account.</p>
        <hr>

        <label for="fName"><b>First Name</b></label>
        <input type="text" placeholder="Enter First Name" name="fname" id="fname" required>

        <label for="lName"><b>Last Name</b></label>
        <input type="text" placeholder="Enter Last Name" name="lname" id="lname" required>
        
        <label for="email"><b>Email</b></label>
        <input type="email" placeholder="Enter Email" name="email" id="email" required>

        <label for="psw"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="psw" id="psw" required>

        <label for="psw-repeat"><b>Repeat Password</b></label>
        <input type="password" placeholder="Repeat Password" name="pswrepeat" id="psw-repeat" required>
        <hr>
        <p>By creating an account you agree to our <a href="#">Terms &#38; Privacy</a>.</p>

        <button type="submit" class="btn">Register</button>
    </div>
    </form>
    <script src="script.js"></script>
</body>
</html>