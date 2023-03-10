<%@page import="com.todayTable.recipe.model.vo.CookingOrder"%>
<%@page import="com.todayTable.category.model.vo.Category"%>
<%@page import="com.todayTable.recipe.model.vo.Ingredient"%>
<%@page import="com.todayTable.recipe.model.vo.IngreClass"%>
<%@page import="com.todayTable.recipe.model.vo.Recipe"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	HashMap<String,Object> list =(HashMap<String,Object>)request.getAttribute("list");
	Recipe recipe = (Recipe)list.get("recipe");
	ArrayList<IngreClass> ingreClass = (ArrayList<IngreClass>)list.get("ingreClass");
	ArrayList<Ingredient> ingredients = (ArrayList<Ingredient>)list.get("ingredients");
	Category category =  (Category)list.get("category");
	ArrayList<CookingOrder> cookingOrders =  (ArrayList<CookingOrder>)list.get("cookingOrders");

%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title><%=recipe.getRecipeName() %></title>

    <style>
    	img{
            border-radius: 10px;
            
        }
        
        .receipe-duration div{
        	margin-right: 20px;
        	display: inline-block;
        }
        .recipe_content{
        	margin-right:50px;
        	font-size: 15px;
        	color:#808080;
        
        }
        
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<link href="https://webfontworld.github.io/nongshim/Ansungtangmyun.css" rel="stylesheet">
</head>

<body>

    

    <%@ include file="../common/menubar.jsp" %>
    

       
    <!-- ##### Header Area End ##### -->

    <!-- ##### Breadcumb Area Start ##### -->
    <div class="breadcumb-area bg-img bg-overlay">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-text text-center">
                        <h2 style="color:#40ba37"><%=recipe.getRecipeTag()%></h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Breadcumb Area End ##### -->
    
    <div class="receipe-post-area section-padding-80">

    

        <!-- Receipe Slider -->
        <div class="container">
			<div class="col-12"  align="center">
			    <img src="<%=contextPath+recipe.getRecipePic()%>"style="height: 500px; width: 70%;">
			</div>
        </div>

        <!-- Receipe Content Area -->
        <div class="receipe-content-area">
            <div class="container">

                <div class="row">
                    <div class="col-12 col-md-8">
                        <div class="receipe-headline my-5">

                            


                            <span><%=recipe.getRecipeDate() %></span>
                            <h2><%=recipe.getRecipeName() %></h2>
                            <div class="receipe-duration" style="text-align:center;">
                                <div>인분: <%=recipe.getRecipePerson() %></div>
                                <div>조리시간: <%=recipe.getRecipeTime() %></div>
                                <div>난이도: <%=recipe.getRecipeDifficulty() %></div>
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
                            <%if(loginUser!=null){%>
                                <div id="changeC">
                            <a href="#" class="btn delicious-btn like_N" id="likeN">찜하기</a>
                        </div>
                            <input type="hidden" id="memNo" value=<%=loginUser.getMemNo() %>>
                            <%} %>
                        </div>
                    </div>
                </div>
                <script>
                    $(function(){

                   
                    $(document).on("click",".like_N",function(){
                        if($(this).attr("id")=="likeN"){
                            $.ajax({

                                url:"insertw.rc",
                                data:{memNo:$("#memNo").val()
                                        ,recipeNo:<%=recipe.getRecipeNo()%>},
                                success:function(){
                                    $("#changeC").css("background-color","red");
                                },
                                error : function(){
		            	            console.log("ajax 통신 실패!!!");
		            	        }
                            })
                        }else{
                            $.ajax({

                                url:"insertd.rc",
                                data:{memNo:$("#memNo").val()
                                        ,recipeNo:<%=recipe.getRecipeNo()%>},
                                success:function(){
                                    $(#changeC).css("background-color","green");
                                },
                                error : function(){
                                    console.log("ajax 통신 실패!!!");
                                }
                            })
                        }


                    })
                })

                </script>
                <div class="row">
                    <div class="col-12 col-lg-8">
                    	<%for(int i=0;i<cookingOrders.size();i++){ %>
                        <!-- Single Preparation Step -->
                        <div>
	                       	<h5>STEP <%=i+1 %></h5>
	                    </div>
	                    <div style="display:flex;">
	                        <div style="width: 65%; height: 150px" class="recipe_content">
	                         	<%=cookingOrders.get(i).getCoContent() %>
	                     	</div>
	                     	<div style="width: 35%">
	                     		<img alt="" src="<%= contextPath+cookingOrders.get(i).getCoImg()%>">
	                     	</div>
                     	</div>
                        
                        <%} %>

                    </div>
                   

                    <!-- Ingredients -->
                    <div class="col-12 col-lg-3" style="margin-left:50px">
                        <div class="ingredients">
                        	<%for(int i=0;i<ingreClass.size();i++){ %>
                            <h4><%=ingreClass.get(i).getIngreCname() %></h4>

                            <!-- Custom Checkbox -->
	                            <%for(int j=0;j<ingredients.size();j++){%>
		                            <%if(ingreClass.get(i).getIngreCname().equals(ingredients.get(j).getIngreCname())){ %>
		                            <div class="">
		                                
		                                <label style="font-size: 17px;"><%=ingredients.get(j).getIngreName() %></label>
		                                <label style="font-size: 15px; float: right; color: rgb(148, 24, 100);"> <%=ingredients.get(j).getIngreAmount()%></label>
		                            </div>
									<%} %>
								<%} %>
							<%} %>
                           
                        
                        </div>

                    </div>
                    
                </div>
				
                <div class="row">
                    <div class="col-12">
                        <div class="section-heading text-left">
                            <h5>댓글</h5>
                        </div>
                        
                    </div>
                    
                </div>
<%if(loginUser!=null){ %>
                <div class="row">
                    <div class="col-10">
                        <div class="contact-form-area">
                                <div class="">
                               
                                    <br>
                                    <div class="col-10">
                                        <textarea name="message" class="form-control" id="replyContent" cols="30" rows="10" placeholder="댓글입력"></textarea>
                                    </div>
                                    <br>
                                    <div class="col-10">
                                        <button type="button" onclick="insertComment();">댓글달기</button>
                                    </div>
                                </div>
                            
                        </div>
                    </div>
                </div>
                <%} %>
                 <div class="row" style="">
                    <div class="col-10" id="comment-area">
                    </div>
                 </div>
            </div>
        </div>
    </div>


	<script>
	
		$(function(){
	        selectReplyList();
	        
	        setInterval(selectReplyList, 10000);
	
	    })
	    
	    function selectReplyList(){
	        $.ajax({
	            url : "comList.rc",
	            data : {rno:<%=recipe.getRecipeNo()%>},
	            success : function(reply){
	                console.log(reply);
	                let value = "";
	                for(let i=0;i<reply.length;i++){
	                    value += "<div style='margin-top:20px; border:5px solid gray;'>"+
	                            "<div> 이름 : " + reply[i].memName +"</div>"
	                            +"<div> 내용 : " + reply[i].comContent + "</div>"
	                          +"</div>"
	                            
	                }
	                $("#comment-area").html(value);
	            },
	            error:function(){
	                console.log("ajax 통신 실패!!!");
	            }
	
	        })
	    }   
		function insertComment(){
	        console.log($("#replyContent").val());
	        
	        $.ajax({
	            url : "rinsert.rc",
	            data : {
	                    content:$("#replyContent").val(),
	                    bno:<%=recipe.getRecipeNo()%> // userNo : 로그인 안한경우, loginUser null인 경우에는 널포인트 에러 발생
	                    },
	            type:"post",
	            success : function(result){
	            	if(result>0){ // 댓글 작성 성공
	                	selectReplyList();
	                	$("#replyContent").val("");
	            		
	            	}else{
	            		
	            	}
	            },
	            error:function(){
	                console.log("ajax 통신 실패!!!");
	            }
	
	        })
		}
	
	</script>
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
    
    <script>
        $(function(){
        	var out = localStorage.getItem('list');
			var list = JSON.parse(out);
			if ( list == null) list = [];
			
            var recipeNo = "<%=recipe.getRecipeNo()%>";
            var recipePic = "<%=recipe.getRecipePic()%>";
            var recipeName = "<%=recipe.getRecipeName()%>";
            var str = recipeNo+'|'+recipePic+'|'+recipeName;
            
            
            list.unshift(str); // 앞에서부터 저장
            let result = [... new Set(list)];
           if(result.length==6){
               result.pop();
           }
           localStorage.setItem('list', JSON.stringify(result));

           
       
        })
		
    </script>
    
</body>

</html>