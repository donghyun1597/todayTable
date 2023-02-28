<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/style.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    
    <style>
   
        /* 로고 이미지 영역 수정했음 */
        .nav-brand { width: 80%;}
        
        #col-510 { 
        flex:0 0 25%;
        padding-left: 7px;
        padding-right: 7px;
        }

        #row-510 { flex-wrap:wrap}
        
        /* .selectbox{
            float: left;
            
        } */
        .recommend-area{
            margin: 20px;
            display: flex;
        }
        a:hover{
        	cursor: pointer;
        }
    </style>
    
    
</head>

<body>

	<!-- 메뉴바 가져오기 -->
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
            <div class="single-hero-slide bg-img" style="background-image: url(resources/image/bg-img/sumin2.jpg);">
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
            <div class="single-hero-slide bg-img" style="background-image: url(resources/image/bg-img/sumin.jpg);">
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
    <!-- ##### Top Catagory Area Start ##### section-padding-80-0 -->
    <section class="recommend-area"> 
        <div class="container">

           
			<div class="form-group" id="recommendSel1">
				<label for="sel2">우리집 냉장고에는</label>
				<select class="form-control">
					<option>소고기</option>
					<option>돼지고기</option>
					<option>닭고기</option>
					<option>해산물</option>
					<option>채소</option>
			  	</select>
			</div>
           
            
            
			<div class="form-group" id="recommendSel2">
				<label for="sel2">가 있고</label>
				<select class="form-control">
				    <option>한국</option>
				    <option>베트남</option>
				    <option>중국</option>
				    <option>이탈리아</option>
				    <option>일본</option>
                      
			  	</select>
			</div>
               

            
            
            
            <div class="form-group"  id="recommendSel3">
	  			<label for="sel1">음식을</label>
			  	<select class="form-control">
				    <option value="2">친구</option>
				    <option value="1">혼자</option>
				    <option value="3">부모님</option>
				    
			  	</select>
			</div>
			<div>랑 먹을래요</div>
			<button type="button" onclick="recommendRecipe();">추천!</button>
        </div>
        <script>
	        function recommendRecipe(){
	            let ingre = $("#recommendSel1 span").text();
	            let nation = $("#recommendSel2 span").text();
                let value = "";
	            let peopleValue = "";
                switch ($("#recommendSel3 span").text()) {
                    case '친구': 
                        peopleValue="2";
                            
                        break;
                    case '혼자': 
                        peopleValue="1";
                        
                        break;
                    case '부모님': 
                        peopleValue="3";
                        
                        break;
                }
                $.ajax({
                    url : "recommend.re",
                    data : {ingre : $("#recommendSel1 span").text()
                            ,nation : $("#recommendSel2 span").text()
                            ,people : peopleValue},
                    success : function(list){
                        console.log(list);
                        for(let i=0;i<list.length;i++){
                            value += '<div class="col-12 col-sm-6 col-lg-4" id="col-510" id="topRecipe1">'+
                                    '<div class="single-best-receipe-area mb-30">'+
                                    '<img src="/today'+list[i].recipePic+'" alt="음식2" id="topRecipeImg1">'+
                                    '<div class="receipe-content">'+
                                        '<a href="receipe-post.html">'+
                                            '<h5>'+list[i].recipeName+'</h5>'+
                                        '</a>'+
                                        '<div class="ratings">난이도'+list[i].recipeDifficulty+'<br>'+
                                            '<i class="fa fa-star" aria-hidden="true"></i>'+
                                            '<i class="fa fa-star" aria-hidden="true"></i>'+
                                            '<i class="fa fa-star" aria-hidden="true"></i>'+
                                        '<i class="fa fa-star" aria-hidden="true"></i>'+
                                            '<i class="fa fa-star-o" aria-hidden="true"></i>'+
                                        '</div>'+
                                    '</div>'+
                                '</div>'+
                            '</div>'
                    }
                    $("#recommend").html(value);
                    },
                    error : function(){
    				    console.log("ajax 통신 실패!!!");
    			    }


                });
	            
	            
                
	        }
        </script>
    </section>
    <!-- ##### Top Catagory Area End ##### -->








     <!-- ##### Best Receipe Area Start ##### -->
     <section class="best-receipe-area">
        <div class="container">

            <div class="row" id="recommend">
                <!-- Single Best Receipe Area -->
                <div class="col-12 col-sm-6 col-lg-4" id="col-510">
                    <div class="single-best-receipe-area mb-30">
                        <img src="resources/image/bg-img/sumin6.jpg" alt="음식1">
                        <div class="receipe-content">
                            <a href="<%=contextPath%>/recipeView.rc">
                                <h5>레시피1</h5>
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
                <div class="col-12 col-sm-6 col-lg-4" id="col-510">
                    <div class="single-best-receipe-area mb-30">
                        <img src="resources/image/bg-img/sumin6.jpg" alt="음식2">
                        <div class="receipe-content">
                            <a href="receipe-post.html">
                                <h5>레시피2</h5>
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
                <div class="col-12 col-sm-6 col-lg-4" id="col-510">
                    <div class="single-best-receipe-area mb-30">
                        <img src="resources/image/bg-img/sumin6.jpg" alt="음식2">
                        <div class="receipe-content">
                            <a href="receipe-post.html">
                                <h5>레시피3</h5>
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
                <div class="col-12 col-sm-6 col-lg-4" id="col-510">
                    <div class="single-best-receipe-area mb-30">
                        <img src="resources/image/bg-img/sumin6.jpg" alt="음식3">
                        <div class="receipe-content">
                            <a href="receipe-post.html">
                                <h5>레시피4</h5>
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
    <!--  -->
    <section class="cta-area bg-img bg-overlay">
        <div class="container h-100"> <br>
            <span class="section-heading" style="text-align: left; margin-top: auto;" >
                <h3>OUR RECIPES</h3>
            </span>
            <div class="row h-100 align-items-center" id="topRecipe">
                
               <!-- Single Best Receipe Area
                <div class="col-12 col-sm-6 col-lg-4" id="col-510" id="topRecipe1">
                    <div class="single-best-receipe-area mb-30">
                        <img src="resources/image/bg-img/sumin6.jpg" alt="음식2" id="topRecipeImg1">
                        <div class="receipe-content">
                            <a href="receipe-post.html">
                                <h5>레시피5</h5>
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



                <div class="col-12 col-sm-6 col-lg-4" id="col-510" id="topRecipe2">
                    <div class="single-best-receipe-area mb-30">
                        <img src="resources/image/bg-img/sumin6.jpg" alt="음식2">
                        <div class="receipe-content">
                            <a href="receipe-post.html">
                                <h5>레시피6</h5>
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


                             
                <div class="col-12 col-sm-6 col-lg-4" id="col-510" id="topRecipe3">
                    <div class="single-best-receipe-area mb-30">
                        <img src="resources/image/bg-img/sumin6.jpg" alt="음식2">
                        <div class="receipe-content">
                            <a href="receipe-post.html">
                                <h5>레시피7</h5>
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
                
                
                
                
                                
                <div class="col-12 col-sm-6 col-lg-4" id="col-510" id="topRecipe4">
                    <div class="single-best-receipe-area mb-30">
                        <img src="resources/image/bg-img/sumin6.jpg" alt="음식2">
                        <div class="receipe-content">
                            <a href="receipe-post.html">
                                <h5>레시피8</h5>
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
                 -->
                
                
                
                
            </div>
        </div>
    </section>
    <!-- ##### Best Receipe End ##### -->




    <!-- ##### Small Receipe Area Start ##### -->
    <section class="best-receipe-area">
        <div class="container">
            <div class="row">
                <div class="col-12"> <br><br>
                    <div class="section-heading" style="text-align: left;">
                        <h3>OUR RECIPES VIDEO</h3>
                    </div>
                </div>
            </div>

            <div class="row">
                <!-- Single Best Receipe Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-best-receipe-area mb-30">
                        <img src="resources/image/bg-img/sumin6.jpg" alt="음식1">
                        <div class="receipe-content">
                            <a href="#">
                                <h5>레시피9</h5>
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
                                <h5>레시피10</h5>
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
                        <img src="resources/image/bg-img/sumin6.jpg" alt="">
                        <div class="receipe-content">
                            <a href="receipe-post.html">
                                <h5>레시피11</h5>
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
                <div class="col-12 col-sm-6 col-lg-4" id="col-510">
                    <div class="single-best-receipe-area mb-30">
                        <img src="resources/image/bg-img/sumin6.jpg" alt="음식2">
                        <div class="receipe-content">
                            <a href="receipe-post.html">
                                <h5>레시피12</h5>
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
                <div class="col-12 col-sm-6 col-lg-4" id="col-510">
                    <div class="single-best-receipe-area mb-30">
                        <img src="resources/image/bg-img/sumin6.jpg" alt="음식2">
                        <div class="receipe-content">
                            <a href="receipe-post.html">
                                <h5>레시피13</h5>
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
                <div class="col-12 col-sm-6 col-lg-4" id="col-510">
                    <div class="single-best-receipe-area mb-30">
                        <img src="resources/image/bg-img/sumin6.jpg" alt="음식2">
                        <div class="receipe-content">
                            <a href="receipe-post.html">
                                <h5>레시피14</h5>
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
                <div class="col-12 col-sm-6 col-lg-4" id="col-510">
                    <div class="single-best-receipe-area mb-30">
                        <img src="resources/image/bg-img/sumin6.jpg" alt="음식2">
                        <div class="receipe-content">
                            <a href="receipe-post.html">
                                <h5>레시피15</h5>
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
                        <a href="index.html"><img src="<%=application.getContextPath()%>/resources/image/core-img/logo.jpg" alt=""></a>
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