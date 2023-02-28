<%@page import="com.todayTable.recipe.model.vo.Recipe"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	ArrayList<Recipe> list = (ArrayList<Recipe>)request.getAttribute("list");
	Recipe myrecipe = (Recipe)session.getAttribute("myrecipe");
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
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
                        <h2>나의 댓글</h2> 
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
	<br>
	<br>




    

    <br><br>
            <div class="row" align="center">
		
<div class="container">
    
    <table class="table table-hover">
      <thead>
        <tr>
          <th colspan="3">댓글 조회</th>
        </tr>
      </thead>
      <tbody>
        <tr>
            <td style="width: 5%; padding-top: 20px; padding-left: 20px;">
                <div class="only_box">
                    <div class="FormInputCheck">
                        <input id="check_comment_100" type="checkbox" class="input_check">
                        <label for="check_comment_100" class="label">
                            <span class="blind"></span>
                        </label>
                    </div>
                </div>
            </td>

            <td style="width: 70%; padding-top: 20px; ">
                </div> <a href="#" target="_blank" class="board-list">
                    <div class="inner_list" style="font-weight: 400;">
                        <strong class="article">
                            크로와상으로 만든 샌드위치가 바사삭함 크로와상과 어우러져서 맛있어서 좋아하거든요~^^
                            집에서 만드는거 저도 한번 시도해봐야겠어요~^^
                        </strong>
                    </div>
                <div class="comment_date"  style="color: gray; font-size: small;">
                    2016.09.18.
                </div>
                <div class="comment_title" style="color: gray; font-size: small;"> 
                    크로와상 생지로 만드는 샌드위치 <span class="cmt" style="color: red
                    ;">[<em>96</em>]</span>
                </div>
                </a>
            </td>
            <td style="width: 25%;" align="center">
                <img src="img/blog-img/10.jpg" style="width: 120px; height: 90px; border-radius: 10px;">
            </td>
        </tr>


        <tr>
            <td style="width: 5%; padding-top: 20px; padding-left: 20px;">
                <div class="only_box">
                    <div class="FormInputCheck">
                        <input id="check_comment_100" type="checkbox" class="input_check">
                        <label for="check_comment_100" class="label">
                            <span class="blind"></span>
                        </label>
                    </div>
                </div>
            </td>

            <td style="width: 70%; padding-top: 20px; ">
                </div> <a href="#" target="_blank" class="board-list">
                    <div class="inner_list" style="font-weight: 400;">
                        <strong class="article">
                            집에서 만들었는데 너무 맛있어요~
                        </strong>
                    </div>
                <div class="comment_date"  style="color: gray; font-size: small;">
                    2020.02.10.
                </div>
                <div class="comment_title" style="color: gray; font-size: small;"> 
                    새우튀김 <span class="cmt" style="color: red
                    ;">[<em>105</em>]</span>
                </div>
                </a>
            </td>
            <td style="width: 25%;" align="center">
                <img src="img/blog-img/8.jpg" style="width: 120px; height: 90px; border-radius: 10px;">
            </td>
        </tr>


        

        




      </tbody>
    </table>
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