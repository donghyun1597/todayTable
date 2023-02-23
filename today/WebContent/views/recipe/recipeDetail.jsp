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
    <title>Delicious - Food Blog Template | Receipe Post</title>

    

</head>

<body>

    

    <%@ include file="../common/menubar.jsp" %>
    

       
    <!-- ##### Header Area End ##### -->

    <!-- ##### Breadcumb Area Start ##### -->
    <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/breadcumb3.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-text text-center">
                        <h2>Recipe</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Breadcumb Area End ##### -->

    <div class="receipe-post-area section-padding-80">

    

        <!-- Receipe Slider -->
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="receipe-slider owl-carousel">
                        <img src="<%=contextPath%>/resources/image/bg-img/sumin.jpg" alt="">
                        <img src="<%=contextPath%>/resources/image/bg-img/sumin.jpg" alt="">
                        <img src="<%=contextPath%>/resources/image/bg-img/sumin.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>

        <!-- Receipe Content Area -->
        <div class="receipe-content-area">
            <div class="container">

                <div class="row">
                    <div class="col-12 col-md-8">
                        <div class="receipe-headline my-5">
                            <span>April 05, 2018</span>
                            <h2>돼지고기 김치찌개 달인이 되는 황금레시피</h2>
                            <div class="receipe-duration">
                                <span>인분: 15 mins</span>
                                <span>조리시간: 30 mins</span>
                                <span>난이도: 8 Servings</span>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-md-4">
                        <div class="receipe-ratings text-right my-5">
                            <div class="ratings">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                            </div>
                            <a href="#" class="btn delicious-btn">For Begginers</a>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12 col-lg-8">
                        <!-- Single Preparation Step -->
                        <div class="single-preparation-step d-flex">
                            <h5>STEP 1</h5><br>
                            <p>키친타올로 고기 핏물을 제거하고 먹기 좋은 크기로 숭덩숭덩 잘라주세요. </p>
                        </div>
                        <!-- Single Preparation Step -->
                        <div class="single-preparation-step d-flex">
                            <h5>STEP 2</h5>
                            <p> 김치도 먹기 좋은 크기로 쫑쫑 썹니다.</p>
                        </div>
                        <!-- Single Preparation Step -->
                        <div class="single-preparation-step d-flex">
                            <h5>STEP 3</h5>
                            <p>냄비에 들기름 2수저와 된장 1수저 넣고 수저로 섞어주세요. </p>
                        </div>
                        <!-- Single Preparation Step -->
                        <div class="single-preparation-step d-flex">
                            <h5>STEP 4</h5>
                            <p>섞은 양념은 약불에서 짙은 갈색이 될때까지 볶아줍니다.</p>
                        </div>
                        <div class="single-preparation-step d-flex">
                            <h5>STEP 5</h5>
                            <p>썰어놓은 고기와 설탕 1/2수저 넣고 중불로 올려 볶아주세요.</p>
                        </div>
                        <div class="single-preparation-step d-flex">
                            <h5>STEP 6</h5>
                            <p>고기 겉면이 익을 때까지 잘 볶아주세요.</p>
                        </div>
                        <div class="single-preparation-step d-flex">
                            <h5>STEP 7</h5>
                            <p>썰어놓은 김치를 넣고 열심히 볶아주세요.</p>
                        </div>

                    </div>

                    <!-- Ingredients -->
                    <div class="col-12 col-lg-4">
                        <div class="ingredients">
                            <h4>재료</h4>

                            <!-- Custom Checkbox -->
                            <div class="custom-control custom-checkbox">
                                
                                <label class="custom-control-label" for="customCheck1">돼지고기 앞다리살</label>
                            </div>

                            <!-- Custom Checkbox -->
                            <div class="custom-control custom-checkbox">
                                <label class="custom-control-label" for="customCheck2">배추김치</label>
                            </div>

                            <!-- Custom Checkbox -->
                            <div class="custom-control custom-checkbox">
                                <label class="custom-control-label" for="customCheck3">대파 </label>
                            </div>

                            <!-- Custom Checkbox -->
                            <div class="custom-control custom-checkbox">
                                <label class="custom-control-label" for="customCheck4">청양고추</label>
                            </div>

                            <!-- Custom Checkbox -->
                            <div class="custom-control custom-checkbox">
                                <label class="custom-control-label" for="customCheck5">물</label>
                            </div>
                        
                        </div>

                        <div class="ingredients">
                            <h4>[양념]</h4>

                            <!-- Custom Checkbox -->
                            <div class="custom-control custom-checkbox">
                                
                                <label class="custom-control-label" for="customCheck1">된장</label>
                            </div>

                            <!-- Custom Checkbox -->
                            <div class="custom-control custom-checkbox">
                                <label class="custom-control-label" for="customCheck2">들기름 or 참기름</label>
                            </div>

                            <!-- Custom Checkbox -->
                            <div class="custom-control custom-checkbox">
                                <label class="custom-control-label" for="customCheck3">설탕 </label>
                            </div>

                            <!-- Custom Checkbox -->
                            <div class="custom-control custom-checkbox">
                                <label class="custom-control-label" for="customCheck4">다진마늘</label>
                            </div>

                            <!-- Custom Checkbox -->
                            <div class="custom-control custom-checkbox">
                                <label class="custom-control-label" for="customCheck5">후추</label>
                            </div>
                        
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12">
                        <div class="section-heading text-left">
                            <h3>Leave a comment</h3>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12">
                        <div class="contact-form-area">
                            <form action="#" method="post">
                                <div class="row">
                                    <div class="col-12 col-lg-6">
                                        <input type="text" class="form-control" id="name" placeholder="Name">
                                    </div>
                                    <div class="col-12 col-lg-6">
                                        <input type="email" class="form-control" id="email" placeholder="E-mail">
                                    </div>
                                    <div class="col-12">
                                        <input type="text" class="form-control" id="subject" placeholder="Subject">
                                    </div>
                                    <div class="col-12">
                                        <textarea name="message" class="form-control" id="message" cols="30" rows="10" placeholder="Message"></textarea>
                                    </div>
                                    <div class="col-12">
                                        <button class="btn delicious-btn mt-30" type="submit">Post Comments</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- ##### Follow Us Instagram Area Start ##### -->
    <div class="follow-us-instagram">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h5>Follow Us Instragram</h5>
                </div>
            </div>
        </div>
        <!-- Instagram Feeds -->
        <div class="insta-feeds d-flex flex-wrap">
            <!-- Single Insta Feeds -->
            <div class="single-insta-feeds">
                <img src="img/bg-img/insta1.jpg" alt="">
                <!-- Icon -->
                <div class="insta-icon">
                    <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                </div>
            </div>

            <!-- Single Insta Feeds -->
            <div class="single-insta-feeds">
                <img src="img/bg-img/insta2.jpg" alt="">
                <!-- Icon -->
                <div class="insta-icon">
                    <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                </div>
            </div>

            <!-- Single Insta Feeds -->
            <div class="single-insta-feeds">
                <img src="img/bg-img/insta3.jpg" alt="">
                <!-- Icon -->
                <div class="insta-icon">
                    <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                </div>
            </div>

            <!-- Single Insta Feeds -->
            <div class="single-insta-feeds">
                <img src="img/bg-img/insta4.jpg" alt="">
                <!-- Icon -->
                <div class="insta-icon">
                    <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                </div>
            </div>

            <!-- Single Insta Feeds -->
            <div class="single-insta-feeds">
                <img src="img/bg-img/insta5.jpg" alt="">
                <!-- Icon -->
                <div class="insta-icon">
                    <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                </div>
            </div>

            <!-- Single Insta Feeds -->
            <div class="single-insta-feeds">
                <img src="img/bg-img/insta6.jpg" alt="">
                <!-- Icon -->
                <div class="insta-icon">
                    <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                </div>
            </div>

            <!-- Single Insta Feeds -->
            <div class="single-insta-feeds">
                <img src="img/bg-img/insta7.jpg" alt="">
                <!-- Icon -->
                <div class="insta-icon">
                    <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                </div>
            </div>
        </div>
    </div>
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