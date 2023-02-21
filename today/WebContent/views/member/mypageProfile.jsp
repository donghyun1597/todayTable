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

            <div class="row align-items-center mt-70">
                <!-- Single Cool Fact -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-cool-fact">
                        <img src="img/core-img/salad.png" alt="">
                        <h3><span class="counter">1287</span></h3>
                        <h6>내가 작성한 레시피</h6>
                    </div>
                </div>

                <!-- Single Cool Fact -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-cool-fact">
                        <img src="img/core-img/hamburger.png" alt="">
                        <h3><span class="counter">25</span></h3>
                        <h6>내가 작성한 댓글</h6>
                    </div>
                </div>

                <!-- Single Cool Fact -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-cool-fact">
                        <img src="img/core-img/rib.png" alt="">
                        <h3><span class="counter">471</span></h3>
                        <h6>내가 찜한 목록</h6>
                    </div>
                </div>

                <!-- Single Cool Fact -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-cool-fact">
                        <img src="img/core-img/pancake.png" alt="">
                        <h3><span style="font-size: 25px; font-weight: 700;">사케동러버</span></h3>
                        <h6>내 정보 수정하기</h6>
                    </div>
                </div>
            </div>



            <div class="row" align="center">
                <div class="col-12">
                    <h5>회원 정보 수정</h5>
                    <form id="mypage-form" action="#" method="post"> <br><br>
                        <table border="1px solid gray">
                            <tr>
                                <td id="t1">&nbsp;* 아이디</td> 
                                <td id="t2"><input type="text" name="userId" maxlength="12" value="<%= memId %>" readonly></td>
                                <!-- readonly: 보여지기만 할 뿐, 수정은 불가 -->
                            </tr>
                            <tr>
                                <td id="t1">&nbsp;* 이름</td>
                                <td id="t2"><input type="text" name="userName" maxlength="6" value="<%= memName %>" readonly></td>
                            </tr>
                            <tr>
                                <td id="t1">&nbsp;&nbsp;비밀번호</td>
                                <td id="t2"><input type="password" name="userPwd" maxlength="30" value="<%= memPwd %>" required>
                                    <span style="font-size: 10px;">* 영문 대소문자/숫자/특수문자 혼용하여 2종류 10 ~ 16자</span></td>
                                
                            </tr>
                            <tr>
                                <td id="t1">&nbsp;&nbsp;비밀번호 확인</td>
                                <td id="t2"><input type="password" name="userPwd" required></td>
                            </tr>
                            <tr>
                                <td id="t1">&nbsp;&nbsp;닉네임</td>
                                <td id="t2"><input type="text" name="nickname" value="<%= nickName %>"></td>
                            </tr>
                            <tr>
                                <td id="t1">&nbsp;&nbsp;휴대폰</td>
                                <td id="t2"><input type="text" name="phone" placeholder="-포함해서 입력" value="<%= phone%>"></td>
                            </tr>
                            <tr>
                                <td id="t1">&nbsp;&nbsp;알러지정보</td>
                                <td id="t2" colspan="2" >
                                    <input type="checkbox" name="ag" id="ag" value="ag1">
                                    <label for="ag">난류</label>
                                    <input type="checkbox" name="ag" id="ag" value="ag1">
                                    <label for="ag">우유</label>
                                    <input type="checkbox" name="ag" id="ag" value="ag1">
                                    <label for="ag">곡류</label>
                                    <input type="checkbox" name="ag" id="ag" value="ag1">
                                    <label for="ag">갑각류</label>
                                    <input type="checkbox" name="ag" id="ag" value="ag1">
                                    <label for="ag">견과류</label>
                                </td>
                            </tr>
                        </table>

                        <script>
                            $(function(){
                                const ag = "<%= memAlg.getAlgName() %>";
                                $("input[type=checkbox]").each(function(){
                                    if(ag.search($(this).val()) != -1){
                                        $(this).attr("checked",true);
                                    }
                                })
                            })
                        </script>
                        <br><br>


                        <div align="center">
                            <a href="#" class="btn delicious-btn btn-4 m-1">정보변경</a>
                            <a href="#" class="btn delicious-btn btn-4 m-1" data-toggle="modal" data-target="#deleteModal">회원탈퇴</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>


         <!-- 회원 탈퇴용 Modal -->
 <div class="modal" id="deleteModal">
    <div class="modal-dialog">
      <div class="modal-content">
  
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">회원탈퇴</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
  
        <!-- Modal body -->
        <div class="modal-body" align="center">
          <!-- 입력받고 싶은 내용 -->
          <form action="<%= contextPath %>/delete.me" method="post">
            <b>탈퇴 후 복구가 불가능 합니다. <br> 정말로 탈퇴 하시겠습니까?</b> <br><br>
            비밀번호: <input type="password" name="userPwd" required> 
            <input type="hidden" name="userId" value="<%= memId%>"><br><br>
            <button type="submit" class="btn btn-sm btn-danger">탈퇴하기</button>
          </form>
        </div>
      </div>
    </div>
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