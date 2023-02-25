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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <style>
		#mypage-form table { margin: auto;}
        #mypage-form input { margin: 5px; }

        #t1 {
            width: 200px;
            height: 40px;
            text-align: left;
        }

        #t2 {
            width: 600px;
        }

        #tag-sm{
            padding-top: 0px;
        }


        #read { border: none; background: transparent; }

    </style>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="style.css">

</head>

<body>
    <%@ include file="../common/menubar.jsp" %>
 
 
     <!-- 로그인 성공하면 session 다 쓸 수 있는것 -->
    <%
		String memId = loginUser.getMemId();
		String memName = loginUser.getMemName();
		String memPwd = loginUser.getMemPwd();
		String nickName = loginUser.getNickName();
		String phone = loginUser.getPhone();
		String memImg = loginUser.getMemImg();
		
    %>

	
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






    <!-- ##### About Area Start ##### -->
    <section class="about-area section-padding-80">
        <h6 align="center">PASSWORD CHECK</h6> <br>
        <!-- 여기 이미지 영역 -->
        <p align="center">
            저희 홈페이지에서는 회원님의 소중한 개인정보를 안전하게 보호하고 <br>
            개인정보 도용으로 인한 피해를 예방하기 위하여 비밀번호를 확인합니다. <br>
            비밀번호는 타인에게 노출되지 않도록 주의해주세요.
        </p>
        <hr> <br>
        <div class="outer">
            <form action="#" id="mypage-check" method="post">
                <div id="check" align="center">
                    <table id="td">
                        <tr>
                            <td width="100" id="read">ID:</td>
                            <td><input type="text" name="memId" id="read" maxlength="12" value="<%= memId %>" readonly ></td>
                        </tr>
                        <tr>
                            <td>PASSWORD:</td>
                            <td><input type="password" name="memPwd" maxlength="30" value="<%= memPwd %>" required></td>
                        </tr>
                    </table>
                </div> <br>
                <div align="center">
                    <button type="submit" class="btn">SUBMIT</button> <hr>
                </div>
            </form>
        </div>

    </section>
    <!-- ##### About Area End ##### -->





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