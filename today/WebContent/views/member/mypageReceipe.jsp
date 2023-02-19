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

        #col-510{
            flex:0 0 25%;
            padding-left: 5px;
            padding-right: 5px;
        }

        #row-510{
            flex-wrap:wrap;
        }

        #content-510{
            padding-left: 5%;
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






    <!-- ********** Progress Bars & Accordions ********** -->
    <div class="col-12">
        <div class="elements-title mb-80">
            <br><br>
            <h2 align="center">Receipe</h2>
        </div>
    </div>


    <!-- ##### Elements Area Start ##### -->
    <section class="elements-area section-padding-80-0">
        <div class="container">
            <div class="row">

               

                <!-- ##### Tabs ##### -->
                <div class="col-12 col-lg-6">
                    <div class="delicious-tabs-content">
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link" id="tab--1" data-toggle="tab" href="#tab1" role="tab" aria-controls="tab1" aria-selected="false">공개중</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" id="tab--2" data-toggle="tab" href="#tab2" role="tab" aria-controls="tab2" aria-selected="false">작성중</a>
                            </li>
                        </ul>

                        <div class="tab-content mb-80" id="myTabContent">
                            <div class="tab-pane fade" id="tab1" role="tabpanel" aria-labelledby="tab--1">
                                <div class="delicious-tab-content">
                                    <!-- Tab Text -->
                                    <div class="delicious-tab-text">
                                        <p>공개중인 레시피 리스트</p>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade show active" id="tab2" role="tabpanel" aria-labelledby="tab--2">
                                <div class="delicious-tab-content">
                                    <!-- Tab Text -->
                                    <div class="delicious-tab-text">
                                        <p>작성중인 레시피 리스트</p>
                                    </div>
                                </div>
                            </div>
            
                        </div>
                    </div>
                </div>



          

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Elements Area End ***** -->


           



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