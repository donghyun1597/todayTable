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
            flex-wrap: wrap;
        }

        #content-510{
            padding-left: 5%;
        }

        #box-sm {
            background-color: white;
            border: 2px solid rgb(224, 224, 224) ;
            width: 150px;  height: 35px;  border-radius: 20px;
            margin: 10px;
            margin-left: 50px;
            text-align: center;
            line-height: 35px;
            
        }

        .tag{
            box-sizing: border-box;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding-top: 20px;
        
        }

        #tag-li {
            cursor: pointer;
            font-weight: bold;
        }

        .counter{
            color: gray;
            font-size: medium;
        }



        #img-food {
            border-radius: 20px;
            margin: auto;
            max-width: 100%;
            margin-bottom: 10px;
        }


        .post-meta {
            -webkit-box-align: center;
            align-items: center;
            justify-content: space-between;
        }

    </style>

   

</head>

<body>
    <%@ include file="../common/menubar.jsp" %>




  
    <!-- ##### Breadcumb Area Start ##### -->
    <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/breadcumb2.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-text text-center">
                        <h2>찜한 목록</h2> 
                        <div class="tag">
                            <div id="box-sm">
                                <a href="#" id="tag-li"># 나의 댓글</a>
                                <h5><span class="counter">100</span></h5>
                            </div>
                            <div id="box-sm">
                                <a href="#" id="tag-li"># 찜한 목록</a>
                                <h5><span class="counter">4</span></h5>
                            </div>
                            <div id="box-sm">
                                <a href="#" id="tag-li"># 나의 레시피</a>
                                <h5><span class="counter">100</span></h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Breadcumb Area End ##### -->





    

    <br><br>
            <div class="row" align="center">
                <div class="col-12">

            <!-- ##### Best Receipe Area Start ##### -->
            <section class="best-receipe-area">
                <div class="container">

                    <div class="row" id="sumin-row">


                        <!-- Single Best Receipe Area -->
                        <div class="col-12 col-sm-6 col-lg-4" id="sumin-col">
                            <div class="single-best-receipe-area mb-30" style="padding-top: 5px;">
                                <img src="<%=contextPath %>/resources/image/2.jpg" alt="음식2" id="img-food">
                                <div class="receipe-content" style="padding-top: 5px;">
                                    <div class="post-comment-share-area d-flex">
                                        <div class="post-favourite" >
                                            <a href="#" style="color: #b5aec4; padding-right: 60px;"> | 2023-02-25 </a>
                                            <a href="#" style="color: #b5aec4; padding: 5px;"><i class="fa fa-heart-o" aria-hidden="true"></i> 10</a>
                                            <a href="#" style="color: #b5aec4; padding: 5px;"><i class="fa fa-comment-o" aria-hidden="true"></i> 12</a>
                                            <a href="#">  <h5 style="padding-top: 15px;">내가 만든 레시피</h5> </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>



                        <!-- Single Best Receipe Area -->
                        <div class="col-12 col-sm-6 col-lg-4" id="sumin-col">
                            <div class="single-best-receipe-area mb-30" style="padding-top: 5px;">
                                <img src="img/blog-img/8.jpg" alt="음식2" id="img-food">
                                <div class="receipe-content" style="padding-top: 5px;">
                                    <div class="post-comment-share-area d-flex">
                                        <div class="post-favourite" >
                                            <a href="#" style="color: #b5aec4; padding-right: 60px;"> | 2023-02-25 </a>
                                            <a href="#" style="color: #b5aec4; padding: 5px;"><i class="fa fa-heart-o" aria-hidden="true"></i> 10</a>
                                            <a href="#" style="color: #b5aec4; padding: 5px;"><i class="fa fa-comment-o" aria-hidden="true"></i> 12</a>
                                            <a href="#">  <h5 style="padding-top: 15px;">내가 만든 레시피</h5> </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <!-- Single Best Receipe Area -->
                        <div class="col-12 col-sm-6 col-lg-4" id="sumin-col">
                            <div class="single-best-receipe-area mb-30" style="padding-top: 5px;">
                                <img src="img/blog-img/10.jpg" alt="음식2" id="img-food">
                                <div class="receipe-content" style="padding-top: 5px;">
                                    <div class="post-comment-share-area d-flex">
                                        <div class="post-favourite" >
                                            <a href="#" style="color: #b5aec4; padding-right: 60px;"> | 2023-02-25 </a>
                                            <a href="#" style="color: #b5aec4; padding: 5px;"><i class="fa fa-heart-o" aria-hidden="true"></i> 10</a>
                                            <a href="#" style="color: #b5aec4; padding: 5px;"><i class="fa fa-comment-o" aria-hidden="true"></i> 12</a>
                                            <a href="#">  <h5 style="padding-top: 15px;">내가 만든 레시피</h5> </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                            <!-- Single Best Receipe Area -->
                            <div class="col-12 col-sm-6 col-lg-4" id="sumin-col">
                            <div class="single-best-receipe-area mb-30" style="padding-top: 5px;">
                                <img src="img/blog-img/11.jpg" alt="음식2" id="img-food">
                                <div class="receipe-content" style="padding-top: 5px;">
                                    <div class="post-comment-share-area d-flex">
                                        <div class="post-favourite" >
                                            <a href="#" style="color: #b5aec4; padding-right: 60px;"> | 2023-02-25 </a>
                                            <a href="#" style="color: #b5aec4; padding: 5px;"><i class="fa fa-heart-o" aria-hidden="true"></i> 10</a>
                                            <a href="#" style="color: #b5aec4; padding: 5px;"><i class="fa fa-comment-o" aria-hidden="true"></i> 12</a>
                                            <a href="#">  <h5 style="padding-top: 15px;">내가 만든 레시피</h5> </a>
                                        </div>
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

    
</body>

</html>