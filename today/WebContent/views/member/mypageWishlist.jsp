<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>오늘의 식탁</title>

    <style>
        /* 로고 이미지 영역 수정했음 */
        .nav-brand { width: 150px; }

        #mypage-form table { 
            margin: auto;
        }

        #mypage-form input { margin: 5px; }

        #t1 {
            width: 200px;
            height: 40px;
            text-align: left;
        }

        #t2 {
            width: 600px;
        }

        #sumin-col{
            flex:0 0 25%;
        }

        #sumin-row {
            flex-wrap:wrap
        }



    </style>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="style.css">

</head>

<body>
   <%@ include file="/../views/common/menubar.jsp" %>



    <!-- ##### Breadcumb Area Start ##### -->
    <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/breadcumb2.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-text text-center">
                        <h2>MyPage</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Breadcumb Area End ##### -->




	<%@include file="mypageMenubar.jsp" %>


            <div class="row" align="center">
                <div class="col-12">
                    <h5>찜한 목록</h5>
                    <br><br>

            <!-- ##### Best Receipe Area Start ##### -->
            <section class="best-receipe-area">
                <div class="container">

                    <div class="row" id="sumin-row">
                        <!-- Single Best Receipe Area -->
                        <div class="col-12 col-sm-6 col-lg-4" id="sumin-col">
                            <div class="single-best-receipe-area mb-30">
                                <img src="img/bg-img/sumin5.jpg" alt="음식1">
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
                                <img src="img/bg-img/sumin6.jpg" alt="음식2">
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
                                <img src="img/bg-img/sumin6.jpg" alt="음식2">
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
                                <img src="img/bg-img/sumin6.jpg" alt="음식2">
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
                                <img src="img/bg-img/sumin7.jpg" alt="음식3">
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
                        <a href="index.html"><img src="img/core-img/logo.png" alt=""></a>
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
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
</body>

</html>