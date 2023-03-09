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

</head>

<body>

    

    <%@ include file="../common/menubar.jsp" %>
    

       
    <!-- ##### Header Area End ##### -->

    <!-- ##### Breadcumb Area Start ##### -->
    <div class="breadcumb-area bg-img bg-overlay" style="background-image: url("");">
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
                            <input type="hidden" name="rNo" value="<%= recipe.getRecipeNo() %>">
                            <input type="hidden" name="loginUser" value="<%= loginUser.getMemId() %>">
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
                            <a href="#" class="btn delicious-btn">찜하기</a>
                        </div>
                    </div>
                </div>

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
                    <div class="col-12 col-lg-4" style="margin-left:50px">
                        <div class="ingredients">
                        	<%for(int i=0;i<ingreClass.size();i++){ %>
                            <h4><%=ingreClass.get(i).getIngreCname() %></h4>

                            <!-- Custom Checkbox -->
	                            <%for(int j=0;j<ingredients.size();j++){%>
		                            <%if(ingreClass.get(i).getIngreCname().equals(ingredients.get(j).getIngreCname())){ %>
		                            <div class="">
		                                
		                                <label style="font-size: 17px;"><%=ingredients.get(j).getIngreName() %></label>
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
                            <h3>댓글을 남겨보세요!</h3>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12">
                        <div class="contact-form-area">
                            <form action="#" method="post">
                                <div class="">
                                    <div class="col-12">
                                        <input type="text" class="form-control" id="subject" placeholder="Subject">
                                    </div>
                                    <br>
                                    <div class="col-12">
                                        <textarea name="message" class="form-control" id="message" cols="30" rows="10" placeholder="Message"></textarea>
                                    </div>
                                    <br>
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