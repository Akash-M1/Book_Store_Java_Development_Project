<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bookly</title>
    
    <link rel="stylesheet" href="style.css">

    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
    

</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>



<section class="home" id="home">

    <div class="row">

        <div class="content">
            <h3>upto 75% off</h3>
            <p>Get your favorite books before it is too late!!</p>
            <a href="#" class="btn">shop now</a>
        </div>

        <div class="swiper books-slider">
            <div class="swiper-wrapper">
                <a href="#" class="swiper-slide"><img src="image/atomichabits.jpg" alt=""></a>
                <a href="#" class="swiper-slide"><img src="image/ikigai.jpg" alt=""></a>
                <a href="#" class="swiper-slide"><img src="image/hyperfocus.jpg" alt=""></a>
                <a href="#" class="swiper-slide"><img src="image/12rulesfor life.jpg" alt=""></a>
                <a href="#" class="swiper-slide"><img src="image/80:20principle.jpg.webp" alt=""></a>
                <a href="#" class="swiper-slide"><img src="image/richdadpoordad.jpg" alt=""></a>
            </div>
            <img src="image/stand.png" class="stand" alt="">
        </div>

    </div>

</section>

<!-- home section ense  -->

<!-- icons section starts  -->

<section class="icons-container">

    <div class="icons">
        <i class="fas fa-shipping-fast"></i>
        <div class="content">
            <h3>free shipping</h3>
            <p>order over â¹999</p>
        </div>
    </div>

    <div class="icons">
        <i class="fas fa-lock"></i>
        <div class="content">
            <h3>secure payment</h3>
            <p>100% secure payment</p>
        </div>
    </div>

    <div class="icons">
        <i class="fas fa-redo-alt"></i>
        <div class="content">
            <h3>easy returns</h3>
            <p>10 days returns</p>
        </div>
    </div>

    <div class="icons">
        <i class="fas fa-headset"></i>
        <div class="content">
            <h3>24/7 support</h3>
            <p>call us anytime</p>
        </div>
    </div>

</section>

<!-- icons section ends -->


<!-- deal section starts  -->

<section class="deal">

    <div class="content">
        <h3>deal of the day</h3>
        <h1>upto 50% off</h1>
        <p>grab your books before the sale ends</p>
        <a href="#" class="btn">shop now</a>
    </div>

    <div class="image">
        <img src="image/deal-img.jpg" alt="">
    </div>

</section>

<!-- deal section ends -->

<!-- reviews section starts  -->

<section class="reviews" id="reviews">

    <h1 class="heading"> <span>client's reviews</span> </h1>

    <div class="swiper reviews-slider">

        <div class="swiper-wrapper">

            <div class="swiper-slide box">
                <img src="image/Akash.jpg" alt="">
                <h3>Akash M</h3>
                <p>We get any type of author book student book.people should try here cheap and best cost.all type of books qvailable in this store</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="image/Aaditya.jpg" alt="">
                <h3>Aaditya Maria</h3>
                <p>I love to read different books , they have more beautifull , history books of wonderful aimers , really enjoyed with the books</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="image/pic-3.png" alt="">
                <h3>Atharva Santosh</h3>
                <p>Books are very important for us. Because they teach us how to deal with different situations in our life.</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>
            <div class="swiper-slide box">
                <img src="image/ronit.jpg" alt="">
                <h3>Ronit Bangard</h3>
                <p>This store has a big collection of lots of popular books. no doubt, we will get any book from here.</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="image/shashvat.jpg" alt="">
                <h3>Shashvat Rai</h3>
                <p>I have visited over there, almost all books are available. One stop shop for all books. we will get any book from here.</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="image/keshav.jpg" alt="">
                <h3>Keshav Somani</h3>
                <p>This is the amazing book store ??. I love this is the way of treat by the customers??. All the book are awailabe in this online store.</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>

        </div>

    </div>

</section>

<!-- reviews section ends -->

<!-- footer section starts  -->

<section class="footer">

    <div class="box-container">

        <div class="box">
            <h3>our locations</h3>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> india </a>
        </div>

        <div class="box">
            <h3>quick links</h3>
            <a href="#"> <i class="fas fa-arrow-right"></i> home </a>
            <a href="feature.jsp"> <i class="fas fa-arrow-right"></i> featured </a>
            <a href="arrival.html"> <i class="fas fa-arrow-right"></i> arrivals </a>
            <a href="#reviews"> <i class="fas fa-arrow-right"></i> reviews </a>
            <a href="blogs.html"> <i class="fas fa-arrow-right"></i> blogs </a>
        </div>

        <div class="box">
            <h3>extra links</h3>
            <a href="#"> <i class="fas fa-arrow-right"></i> account info </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> ordered items </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> privacy policy </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> payment method </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> our serivces </a>
        </div>

        <div class="box">
            <h3>contact info</h3>
            <a href="#"> <i class="fas fa-phone"></i> +91 9611309909 </a>
            <a href="#"> <i class="fas fa-phone"></i> +91 9591655777 </a>
            <a href="#"> <i class="fas fa-envelope"></i> akashmalasetty@gmail.com </a>
            <img src="image/worldmap.png" class="map" alt="">
        </div>

    </div>

    <div class="share">
        <a href="https://www.facebook.com/akash.malasetty.9" class="fab fa-facebook-f"></a>
        <a href="https://twitter.com/Akash_M20" class="fab fa-twitter"></a>
        <a href="https://www.instagram.com/akashmalasetty/" class="fab fa-instagram"></a>
        <a href="https://www.linkedin.com/in/akash-malasetty-862588a4/" class="fab fa-linkedin"></a>
        <a href="https://in.pinterest.com/akashmalasetty9/_saved/" class="fab fa-pinterest"></a>
    </div>

</section>

<!-- footer section ends -->




<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="script.js"></script>

</body>
</html>
