<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Subcription Plans</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" href="subscribecss.css">
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
    	<jsp:include page="navbar.jsp"></jsp:include>
        <div id="Cards">
            <h2 id="Heading">Login Successfull!! Choose a Plan to Continue</h2>
            <div class="columns">
            <ul class="price">
                <li class="header">Basic</li>
                <li class="grey">Free</li>
                <li>No Discounts</li>
                <li>no free trail books</li>
                <li>No Free ebooks</li>
                <li>No Priority Services</li>
                <li class="grey"><a href="index.html" class="btn">Continue</a></li>
            </ul>
            </div>

            <div class="columns">
            <ul class="price">
                <li class="header" style="background-color:#fd7014">Pro<span style="font-size: small;">(Recommended)</span></li>
                <li class="grey">$ 2000/Year</li>
                <li>20% Member Discount</li>
                <li>2 free trail books</li>
                <li>8 Free eBooks per year</li>
                <li>Priority and Free Delivery</li>
                <li class="grey"><a href="#" class="btn">Buy Now</a></li>
            </ul>
            </div>

            <div class="columns">
            <ul class="price">
                <li class="header">Premium</li>
                <li class="grey">$ 3500/Year</li>
                <li>20% Member Discount</li>
                <li>Goodies and Gifts</li>
                <li>16 Free eBooks per year</li>
                <li>5 free trail books</li>
                <li class="grey"><a href="#" class="btn">buy Now</a></li>
            </ul>
            </div>
        </div>

        
        <script src="script.js" async defer></script>
    </body>
</html>