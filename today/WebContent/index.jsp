<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="resources/image/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="resources/css/style.css">
    <style>
        /* 로고 이미지 영역 수정했음 */
        .nav-brand {
            width: 150px;
        }
    </style>
</head>

<body>

	<%@ include file="views/common/menubar.jsp" %>

	<!-- ##### Hero Area Start ##### -->
    <section class="hero-area">
        <div class="hero-slides owl-carousel">
            <!-- Single Hero Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url(resources/image/bg-img/sumin1.jpeg);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                            <div class="hero-slides-content" data-animation="fadeInUp" data-delay="100ms">
                                <h2 data-animation="fadeInUp" data-delay="300ms">MBTI별 추천요리</h2>
                                <p data-animation="fadeInUp" data-delay="700ms">나와 어울리는 소울푸드는?</p>
                                <a href="#" class="btn delicious-btn" data-animation="fadeInUp" data-delay="1000ms">참여하기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Single Hero Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url(resources/img/bg-img/sumin2.jpg);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                            <div class="hero-slides-content" data-animation="fadeInUp" data-delay="100ms">
                                <h2 data-animation="fadeInUp" data-delay="300ms">월간 식탁고사</h2>
                                <p data-animation="fadeInUp" data-delay="700ms">제 1회 요리 영역</p>
                                <a href="#" class="btn delicious-btn" data-animation="fadeInUp" data-delay="1000ms">참여하기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Single Hero Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url(resources/img/bg-img/sumin.jpg);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                            <div class="hero-slides-content" data-animation="fadeInUp" data-delay="100ms">
                                <h2 data-animation="fadeInUp" data-delay="300ms">돈가스 덕후라면 반드시 도전!</h2>
                                <p data-animation="fadeInUp" data-delay="700ms">월간 식탁고사: 제2회 돈가스 덕후력</p>
                                <a href="#" class="btn delicious-btn" data-animation="fadeInUp" data-delay="1000ms">참여하기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Hero Area End ##### -->


    <!-- 여기다가 랜덤박스 넣으려함 -->
    <!-- ##### Top Catagory Area Start ##### -->
    <section class="top-catagory-area section-padding-80-0">
        <div class="container">
            <div class="row">

                <!-- Top Catagory Area 1 -->
                <div class="col-12 col-lg-6">
                    <div class="single-top-catagory">
                        <img src="resources/image/bg-img/bg2.jpg" alt="">
                        <!-- Content -->
                        <div class="top-cta-content">
                            <h3>동현님</h3>
                            <h6>랜덤 &amp; 코드보내주세요</h6>
                            <a href="receipe-post.html" class="btn delicious-btn">기다리는중...</a>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </section>
    <!-- ##### Top Catagory Area End ##### -->








     <!-- ##### Best Receipe Area Start ##### -->
     <section class="best-receipe-area">
        <div class="container">

            <div class="row" id="sumin-row">
                <!-- Single Best Receipe Area -->
                <div class="col-12 col-sm-6 col-lg-4" id="sumin-col">
                    <div class="single-best-receipe-area mb-30">
                        <img src="resources/image/bg-img/sumin5.jpg" alt="음식1">
                        <div class="receipe-content">
                            <a href="#">
                                <h5>두부두부</h5>
                            </a>
                            <div class="ratings">난이도
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                            </div>
                        </div>
                    </div>
                </div>



                <!-- Single Best Receipe Area -->
                <div class="col-12 col-sm-6 col-lg-4" id="sumin-col">
                    <div class="single-best-receipe-area mb-30">
                        <img src="resources/image/bg-img/sumin6.jpg" alt="음식2">
                        <div class="receipe-content">
                            <a href="receipe-post.html">
                                <h5>수란이랑크로와상맛</h5>
                            </a>
                            <div class="ratings">난이도
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                            </div>
                        </div>
                    </div>
                </div>



                <!-- Single Best Receipe Area -->
                <div class="col-12 col-sm-6 col-lg-4" id="sumin-col">
                    <div class="single-best-receipe-area mb-30">
                        <img src="resources/image/bg-img/sumin6.jpg" alt="음식2">
                        <div class="receipe-content">
                            <a href="receipe-post.html">
                                <h5>수란이랑크로와상맛</h5>
                            </a>
                            <div class="ratings">난이도
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Single Best Receipe Area -->
                <div class="col-12 col-sm-6 col-lg-4" id="sumin-col">
                    <div class="single-best-receipe-area mb-30">
                        <img src="resources/image/bg-img/sumin7.jpg" alt="음식3">
                        <div class="receipe-content">
                            <a href="receipe-post.html">
                                <h5>핏자피이짜</h5>
                            </a>
                            <div class="ratings">난이도
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                            </div>
                        </div>
                    </div>
                </div>
            
            </div>
        </div>
    </section>
    <!-- ##### Best Receipe Area End ##### -->



    <!-- ##### Best Receipe Start 22 ##### -->
    <section class="cta-area bg-img bg-overlay">
        <div class="container h-100"> <br>
            <span class="section-heading" style="text-align: left; margin-top: auto;" >
                <h3>OUR RECIPES 2</h3>
            </span>
            <div class="row h-100 align-items-center">
                
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-best-receipe-area mb-30">
                        <img src="resources/image/bg-img/sumin8.jpg" alt="">
                        <div class="receipe-content">
                            <a href="receipe-post.html">
                                <h5>맛있어보이는음식 원</h5>
                            </a>
                            <div class="ratings">난이도
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-best-receipe-area mb-30">
                        <img src="resources/image/bg-img/sumin8.jpg" alt="">
                        <div class="receipe-content">
                            <a href="receipe-post.html">
                                <h5>맛있어보이는음식 투</h5>
                            </a>
                            <div class="ratings">난이도
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-best-receipe-area mb-30">
                        <img src="resources/image/bg-img/sumin8.jpg" alt="">
                        <div class="receipe-content">
                            <a href="receipe-post.html">
                                <h5>맛있어보이는음식 쓰리</h5>
                            </a>
                            <div class="ratings">난이도
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </section>
    <!-- ##### Best Receipe End ##### -->




    <!-- ##### Small Receipe Area Start ##### -->
    <section class="best-receipe-area">
        <div class="container">
            <div class="row">
                <div class="col-12"> <br><br><br><br>
                    <div class="section-heading" style="text-align: left;">
                        <h3>OUR RECIPES VIDEO</h3>
                    </div>
                </div>
            </div>

            <div class="row">
                <!-- Single Best Receipe Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-best-receipe-area mb-30">
                        <img src="resources/image/bg-img/sumin5.jpg" alt="음식1">
                        <div class="receipe-content">
                            <a href="#">
                                <h5>두부두부</h5>
                            </a>
                            <div class="ratings">난이도
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Single Best Receipe Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-best-receipe-area mb-30">
                        <img src="resources/image/bg-img/sumin6.jpg" alt="음식2">
                        <div class="receipe-content">
                            <a href="receipe-post.html">
                                <h5>수란이랑크로와상맛</h5>
                            </a>
                            <div class="ratings">난이도
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Single Best Receipe Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-best-receipe-area mb-30">
                        <img src="resources/image/bg-img/sumin7.jpg" alt="">
                        <div class="receipe-content">
                            <a href="receipe-post.html">
                                <h5>맛있어보이는음식</h5>
                            </a>
                            <div class="ratings">난이도
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                            </div>
                        </div>
                    </div>
                </div>

               
            </div>
        </div> <br><hr>
    </section>
    <!-- ##### Small Receipe Area End ##### -->

    <!-- ##### Quote Subscribe Area Start ##### -->
    <section class="best-receipe-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading" style="text-align: left;">
                        <h3>OUR LATEST RECIPES</h3>
                    </div>
                </div>
            </div>

            <div class="row">
                <!-- Single Best Receipe Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-best-receipe-area mb-30">
                        <img src="resources/image/bg-img/sumin5.jpg" alt="음식1">
                        <div class="receipe-content">
                            <a href="#">
                                <h5>두부두부</h5>
                            </a>
                            <div class="ratings">난이도
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Single Best Receipe Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-best-receipe-area mb-30">
                        <img src="resources/image/bg-img/sumin6.jpg" alt="음식2">
                        <div class="receipe-content">
                            <a href="receipe-post.html">
                                <h5>수란이랑크로와상맛</h5>
                            </a>
                            <div class="ratings">난이도
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Single Best Receipe Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-best-receipe-area mb-30">
                        <img src="resources/image/bg-img/sumin7.jpg" alt="">
                        <div class="receipe-content">
                            <a href="receipe-post.html">
                                <h5>맛있어보이는음식</h5>
                            </a>
                            <div class="ratings">난이도
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                            </div>
                        </div>
                    </div>
                </div>

               
            </div>
        </div><hr>
    </section>
    <!-- ##### Follow Us Instagram Area End ##### -->


    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area">
        <div class="container h-100">
            <div class="row h-100">
                <div class="col-12 h-100 d-flex flex-wrap align-items-center justify-content-between">
                    <!-- Footer Social Info -->
                    <div class="footer-social-info text-right">
                        <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                    </div>
                    <!-- Footer Logo -->
                    <div class="footer-logo">
                        <a href="index.html"><img src="resources/image/core-img/logo.png" alt=""></a>
                    </div>
                    <!-- Copywrite -->
                    <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                </div>
            </div>
        </div>
    </footer>
    <!-- ##### Footer Area Start ##### -->

	<!-- ##### All Javascript Files ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="resources/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="resources/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="resources/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="resources/js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="resources/js/active.js"></script>





  
</body>

</html>