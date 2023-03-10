<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/style.css">
	
	 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/style.css">
    
    
    
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
        img{
            border-radius: 10px;
            
        }
        div[id~=divRecipeThum]{
            width: 300px !important;
            height: 415px !important;
        }

        #recSel1 {
        border-bottom: 2px solid black;
        background-color: #ffffff;
        border-radius: 0;
        width: 100%;
        height: 60px;
        line-height: 60px;
        color: #2f2f2f;
        font-size: 17px;
        }
		<style type="text/css">
		.videoTeduri {
		  position: relative;
		  padding-bottom: 56.25%;
		  height: 0;
		}
		.videoTeduri iframe {
		  position: absolute;
		  top: 0;
		  left: 0;
		  width: 100%;
		  height: 100%;
		}
		</style>
        
        
    </style>
  
    
    <!-- <script src="<%=application.getContextPath()%>/resources/js/mainPage.js"></script> -->
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
                                <a href="<%=contextPath%>/eventDetail.ev?num=7" class="btn delicious-btn" data-animation="fadeInUp" data-delay="1000ms">참여하기</a>
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
                                <a href="<%=contextPath%>/eventDetail.ev?num=8" class="btn delicious-btn" data-animation="fadeInUp" data-delay="1000ms">참여하기</a>
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
                                <a href="<%=contextPath%>/eventDetail.ev?num=9" class="btn delicious-btn" data-animation="fadeInUp" data-delay="1000ms">참여하기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Hero Area End ##### -->

    <!-- 여기다가 랜덤박스 넣으려함 -->
 <section class="recommend-area">
  <div class="container">
    <div class="row" style="flex-direction: column; align-items: center; padding-top: 50px;">


        <div class="col-md-12" id="recommendSel1">
        <div style="font-size: 30px; font-weight: 600; padding-top: 20px; float: left; margin-right: 20px; padding-left:300px">우리집 냉장고에는</div>
        <div id="recSel1" style="width: 150px; height: 100%; float: left; border-bottom: 2px solid black; padding-bottom: 5px;">
            <select class="form-control">
          
                <option>소고기</option>
                <option>돼지고기</option>
                <option>닭고기</option>
                <option>해산물</option>
                <option>채소</option>
              </select>
        </div>
        <div style=" height: 100%; float: left;">
            <label for="sel1">
                <span style="font-size: 30px; font-weight: 600; padding-top: 20px; float: left; float: left; margin-left: 20px;">가 있고</span>
            </label>
        </div>
      </div>



      <div class="col-md-12" id="recommendSel2" style="padding-left:300px;">
        <div id="recSel2" style="width: 150px; height: 100%;  float: left; border-bottom: 2px solid black;" >
            <select class="form-control" style="font-size: 16px; font-weight: 500;"> 
              <option>한국</option>
              <option>베트남</option>
              <option>중국</option>
              <option>이탈리아</option>
              <option>일본</option>
            </select>
        </div>
        
        <div style=" height: 100%; float: left;">
            <label for="sel2">
                <span style="font-size: 30px; font-weight: 600; padding-top: 20px; float: left; margin-right: 20px; margin-left: 20px;">음식을</span>
            </label>
        </div>


        <div id="recSel3" style="width: 150px; height: 100%; float: left; border-bottom: 2px solid black;" >
            <select class="form-control" style="font-size: 16px;">

              <option value="2">친구와 함께</option>
              <option value="1">혼자서</option>
              <option value="3">가족과 함께</option>
            </select>
        </div>

        <div>
            <label for="sel3">
                <span style="font-size: 30px; font-weight: 600; padding-top: 20px; float: left; margin-right: 20px; margin-left: 20px;">먹을래요</span>
            </label>
        </div>
      </div>


      

        

    <div class="row mt-3">
      <div class="col-12">
        <button type="button" id="btn1" class="btn btn-outline-dark btn-lg">내 취향 음식 보기</button>
      </div>
    </div>

    </div>
  </div>
</section>

<!-- ##### Best Receipe Area Start ##### -->
<section class="best-receipe-area py-5">
  <div class="container">
    <div class="row align-items-center" id="recommend">

    </div>
  </div>
  <div class="d-flex justify-content-center mt-4">
    <button type="button" class="btn btn-success btn-sm btnPrev me-3">이전</button>
    <button type="button" class="btn btn-success btn-sm btnNext" style="margin-left: 20px;">다음</button>
  </div>
</section>


        <script>
            $(function(){
                let recipeDivSnum=1;
                let recipeDivEnum=5;
                $(".btnNext").click(function(){
                    console.log($("#recommend").children("div[display=none]"));
                    
                    for(let i=recipeDivSnum;i<recipeDivEnum;i++){
                        console.log(i);
                        $("#divRecipeThum"+i).attr("style","display:none");
                        $("#divRecipeThum"+(recipeDivEnum+i-1)).css("display","block");
                        
                    }
                    recipeDivSnum = recipeDivSnum+4;
                    recipeDivEnum = recipeDivEnum+4;
                })
                $(".btnPrev").click(function(){
                    if(recipeDivSnum==1){return;}
                    
                    console.log(recipeDivSnum);
                    console.log(recipeDivEnum);

                    for(let i=recipeDivSnum;i<recipeDivEnum;i++){
                        console.log(i);
                        $("#divRecipeThum"+i).attr("style","display:none");
                        $("#divRecipeThum"+(i-4)).css("display","block");
                        
                    }
                    
                        recipeDivSnum = recipeDivSnum-4;
                        recipeDivEnum = recipeDivEnum-4;
                    
                    

                })
            })

        </script>
    </section>
    <!-- ##### Best Receipe Area End ##### -->



    <!-- ##### Best Receipe Start 22 ##### -->
    <!--  -->
    <section class="cta-area bg-img bg-overlay">
        <div class="container h-100"> <br>
            <span class="section-heading" style="text-align: left; margin-top: auto;" >
                <h3>인기 레시피</h3>
            </span>
            <div class="row h-100 align-items-center" id="topRecipe">
                
                
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
                        <h3>요리 영상</h3>
                    </div>
                </div>
            </div>

            <div class="row">
                <!-- Single Best Receipe Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div style="position: relative; height:0; padding-bottom: 56.25%; margin: 40px 0px;">
<iframe width="560" height="315" src="https://www.youtube.com/embed/q5vuLwdh97U" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen style="position: absolute; width:100%; height:100%;"></iframe>
</div>
                </div>


                <!-- Single Best Receipe Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div style="position: relative; height:0; padding-bottom: 56.25%; margin: 40px 0px;">
<iframe width="560" height="315" src="https://www.youtube.com/embed/BE5b1FLlBco" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen style="position: absolute; width:100%; height:100%;"></iframe>
</div>
                </div>
                <!-- Single Best Receipe Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div style="position: relative; height:0; padding-bottom: 56.25%; margin: 40px 0px;">
<iframe width="560" height="315" src="https://www.youtube.com/embed/oW5R46_4zOg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen style="position: absolute; width:100%; height:100%;"></iframe>
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
                        <h3>최근 레시피</h3>
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
        </div>
    </section>
    <!-- ##### Follow Us Instagram Area End ##### -->


    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area" id="footerArea" style="background-color: rgb(252, 252, 252); ">
        <div class="line" style="background-color: rgb(237, 237, 237); text-align: center; padding-top: 10px; padding-bottom: 10px;">
            <span style="margin: 0 100px; font-size: 14px; font-weight: 600;">이용안내 </span>
            <span style="margin: 0 100px; font-size: 14px; font-weight: 600;">개인정보처리방침 </span>
            <span style="margin: 0 100px; font-size: 14px; font-weight: 600;">공지사항 </span>
            <span style="margin: 0 100px; font-size: 14px; font-weight: 600;">자주묻는질문</span>
        </div> <br>
        
        <div class="container h-100" style="padding-top: 15px; padding-bottom: 100px; width: 100%;">

            <div class="row justify-content-center">
                <div class="colSm" id="div1">
                    <ul class="list-unstyled" style="margin-right: 150px;">
                        <li><h6>이맛이조</h6></li>
                        <li><i class="fa fa-envelope"></i> 이메일:  dlaktdlwh361@gmail.com</li>
                        <li><i class="fa fa-phone"></i> 전화번호:  010-1234-5678</li>
                        <li><i class="fa fa-map-marker"></i> 주소:  서울 강남구 테헤란로142 플레이스 21층</li>

                    </ul>
                </div>

                <div class="colSm" id="div2">
                    <ul class="list-unstyled" style="margin-left: 150px;">
                        <li><h6>운영시간 (주말. 공휴일 휴무)</h6></li>
                        <li>전화문의: 10:00~12:00, 13:00~17:00</li>
                        <li>1대1문의: 10:00~12:00, 13:00~17:00</li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    <!-- ##### Footer Area Start ##### -->
	
	<script>
		$(function(){
		    viewTopRecipe();
	
		  
	
		    function viewTopRecipe(){
	
		        
		        let value = "";
		        
		        $.ajax({
		            url : "mainThumnail.re",
		            success : function(list){
		                for(let i=0;i<list.length;i++){ 
                            if(list[i].recipeName.length>30){
                                list[i].recipeName = list[i].recipeName.substr(0,30)+"...";
                            }
		                	console.log(list[i].recipeNo);
		                    value +='<div style="width:300px; height:415px;">' +
                                    '<div style="margin-right: 30px;">'+
		                                '<div class="single-best-receipe-area mb-30"><div style="width:250px; height:250px;">'+
                                            '<a href="<%=contextPath%>/recipeView.rc?recipeNo='+list[i].recipeNo +'">'+
                                                '<img src="<%=contextPath%>'+list[i].recipePic+'" alt="음식2" style="width:100%; height:100%;"></div></a>'+
		                                    '<div style="margin-top: 10px;">'+
                                                '<div style="font-size:17px;">'
		                                        +list[i].recipeName+ 
                                                '</div>'+
                                                '<div class="ratings">난이도'+list[i].recipeDifficulty+'<br>'+
                                                    '<i class="fa fa-star" aria-hidden="true"></i>'+
                                                    '<i class="fa fa-star" aria-hidden="true"></i>'+
                                                    '<i class="fa fa-star" aria-hidden="true"></i>'+
                                                    '<i class="fa fa-star" aria-hidden="true"></i>'+
                                                    '<i class="fa fa-star-o" aria-hidden="true"></i>'+
		                                        '</div>'+
                                                '조회수 : ' + list[i].recipeViews+
		                                    '</div>'+
		                                '</div>'+
		                            '</div>'+
                                    '</div>'
		                    
		                }
		                $("#topRecipe").html(value);
		            },
		            error : function(){
		                console.log("ajax 실패!!!");
		            }
	
	
		        })
		        
		    }
		    $(function(){

           
		    $("#btn1").click(function recommendRecipe(){
		        
		        let value = "";
		        let peopleValue = "";
		        switch ($("#recSel3 span").text()) {
		            case '친구와 함께': 
		                peopleValue="2";
		                    
		                break;
		            case '혼자서': 
		                peopleValue="1";
		                
		                break;
		            case '가족과 함께': 
		                peopleValue="3";
		                
		                break;
		        }
		        $.ajax({
		            url : "recommend.re",
		            data : {ingre : $("#recSel1 span").text()
		                    ,nation : $("#recSel2 span").text()
		                    ,people : peopleValue},
		            success : function(list){
		                console.log(list);
                        $("#recommend").children().remove();
		                for(let i=0;i<list.length;i++){
                            let divThum=$('<div style="width:300px; height:415px; display:block;" id="divRecipeThum'+(i+1)+'">' +
                                    '<div style="margin-right: 30px;">'+
		                                '<div><div style="width:250px; height:250px;">'+
                                            '<a href="<%=contextPath%>/recipeView.rc?recipeNo='+list[i].recipeNo +'">'+
                                                '<img src="<%=contextPath%>'+list[i].recipePic+'" alt="음식2" style="width:100%; height:100%;"></div></a>'+
		                                    '<div style="margin-top: 10px;">'+
                                                '<div style="font-size:17px;">'
		                                        +list[i].recipeName+ 
                                                '</div>'+
                                                '<div class="ratings">난이도'+list[i].recipeDifficulty+'<br>'+
                                                    '<i class="fa fa-star" aria-hidden="true"></i>'+
                                                    '<i class="fa fa-star" aria-hidden="true"></i>'+
                                                    '<i class="fa fa-star" aria-hidden="true"></i>'+
                                                    '<i class="fa fa-star" aria-hidden="true"></i>'+
                                                    '<i class="fa fa-star-o" aria-hidden="true"></i>'+
		                                        '</div>'+
                                                '조회수 : ' + list[i].recipeViews+
		                                    '</div>'+
		                                '</div>'+
		                            '</div>'+
                                    '</div>');
                                    if(i>3){
                                        divThum.css("display","none");
                                    }
                                    $("#recommend").append(divThum);
                            // value +='<div style="width:300px; height:415px;">' +
                            //         '<div style="margin-right: 30px;">'+
		                    //             '<div class="single-best-receipe-area mb-30"><div style="width:250px; height:250px;">'+
                            //                 '<a href="<%=contextPath%>/recipeView.rc?recipeNo='+list[i].recipeNo +'">'+
                            //                     '<img src="<%=contextPath%>'+list[i].recipePic+'" alt="음식2" style="width:100%; height:100%;"></div></a>'+
		                    //                 '<div style="margin-top: 10px;">'+
                            //                     '<div style="font-size:17px;">'
		                    //                     +list[i].recipeName+ 
                            //                     '</div>'+
                            //                     '<div class="ratings">난이도'+list[i].recipeDifficulty+'<br>'+
                            //                         '<i class="fa fa-star" aria-hidden="true"></i>'+
                            //                         '<i class="fa fa-star" aria-hidden="true"></i>'+
                            //                         '<i class="fa fa-star" aria-hidden="true"></i>'+
                            //                         '<i class="fa fa-star" aria-hidden="true"></i>'+
                            //                         '<i class="fa fa-star-o" aria-hidden="true"></i>'+
		                    //                     '</div>'+
                            //                     '조회수 : ' + list[i].recipeViews+
		                    //                 '</div>'+
		                    //             '</div>'+
		                    //         '</div>'+
                            //         '</div>'
		                   
		                    
		                }
		            	// $("#recommend").html(value);
		            	},
		            	error : function(){
		            	    console.log("ajax 통신 실패!!!");
		            	}
		
	
		        	})
		        
		        
		        
		   		 })
	
	
	
		})

    })
	</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>


  
</body>

</html>