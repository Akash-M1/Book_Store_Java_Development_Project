<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>blogs</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
		<jsp:include page="navbar.jsp"></jsp:include>

        <section class="blogs" id="blogs">

            <h1 class="heading"> <span>our blogs</span> </h1>
        
            <div class="swiper blogs-slider">
        
                <div class="swiper-wrapper">
        
                    <div class="swiper-slide box">
                        <div class="image">
                            <img src="image/blog-1.jpg" alt="">
                        </div>
                        <div class="content">
                            <h3>The Amazon Book Review</h3>
                            <p>Check out the Amazon Book Review for everything that a book lover could ask for</p>
                            <a href="https://www.amazon.com/amazonbookreview" class="btn">read more</a>
                        </div>
                    </div>
        
                    <div class="swiper-slide box">
                        <div class="image">
                            <img src="image/blog-2.jpg" alt="">
                        </div>
                        <div class="content">
                            <h3>John Pistelli</h3>
                            <p>A professor at the University of Minnesota</p>
                            <p>blogger John Pistelli holds a PhD in English literature</p>
                            <a href="https://johnpistelli.com" class="btn">read more</a>
                        </div>
                    </div>
        
                    <div class="swiper-slide box">
                        <div class="image">
                            <img src="image/blog-3.jpg" alt="">
                        </div>
                        <div class="content">
                            <h3> Bustle Books</h3>
                            <p>Offering a take on the literary world centered around millennial women.</p>
                            <a href="https://www.bustle.com/books" class="btn">read more</a>
                        </div>
                    </div>
        
                    <div class="swiper-slide box">
                        <div class="image">
                            <img src="image/blog-4.jpg" alt="">
                        </div>
                        <div class="content">
                            <h3>From First Page to Last</h3>
                            <p>From First Page to Last is a colorful blog that spotlights</p>
                            <p>books, authors, and publishers of all genres.</p>
                            <a href="https://fromfirstpagetolast.com" class="btn">read more</a>
                        </div>
                    </div>
        
                    <div class="swiper-slide box">
                        <div class="image">
                            <img src="image/blog-5.jpg" alt="">
                        </div>
                        <div class="content">
                            <h3>A Life in Books</h3>
                            <p>Blogger Susan Osborne has done it all—she has worked in book sales, as a writer.</p>
                            <a href="https://alifeinbooks.co.uk" class="btn">read more</a>
                        </div>
                    </div>
        
                </div>
        
            </div>
        
        </section>
        
        <script src="script.js" async defer></script>
    </body>
</html>