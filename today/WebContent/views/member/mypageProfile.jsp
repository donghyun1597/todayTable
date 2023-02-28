<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>오늘의 식탁</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<style>
#mypage-form table {
	margin: auto;
}

#mypage-form input {
	margin: 5px;
}

#t1 {
	width: 200px;
	height: 40px;
	text-align: left;
}

#t2 {
	width: 600px;
}

#tag-sm {
	padding-top: 0px;
}

#read {
	border: none;
	background: transparent;
}
</style>

<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon.ico">

<!-- Core Stylesheet -->
<link rel="stylesheet" href="style.css">

</head>

<body>
	<%@ include file="../common/menubar.jsp"%>


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
	<div class="breadcumb-area bg-img bg-overlay"
		style="background-image: url(img/bg-img/breadcumb2.jpg);">
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
	<section class="about-area section-padding-80" id="tag-sm">



		<div class="row" align="center">
			<div class="col-12">
				<br>
				<br>
				<br>
				<h6>회원 정보 수정</h6>
				<form id="mypage-form" action="<%=contextPath %>/update.me"
					method="post">
					<br>
					<br> <input type="hidden" value="<%=loginUser.getMemNo()%>"
						name="memNo">
					<table border="1px solid gray">
						<tr>
							<td id="t1">&nbsp;아이디</td>
							<td id="t2"><input type="text" name="memId" id="read"
								maxlength="12" value="<%= memId %>" readonly></td>
							<!-- readonly: 보여지기만 할 뿐, 수정은 불가 -->
						</tr>
						<tr>
							<td id="t1">&nbsp;이름</td>
							<td id="t2"><input type="text" id="read" maxlength="6"
								value="<%= memName %>" readonly></td>
						</tr>
						<tr>
							<td id="t1">&nbsp;&nbsp;* 변경할 비밀번호</td>
							<td id="t2"><input type="password" name="memPwd" maxlength="30" required id="memPwd"> 
							<span style="font-size: 10px;">* 영문 대소문자/숫자/특수문자 혼용하여 2종류 10 ~ 16자</span></td>
						</tr>
						<tr>
							<td id="t1">&nbsp;&nbsp;* 비밀번호 확인</td>
							<td id="t2"><input type="password" name="checkPwd" required id="checkPwd"></td>
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
							<td id="t2" colspan="2"><input type="checkbox"
								name="agllergy" id="ag" value="A1"> <label for="ag">난류</label>
								<input type="checkbox" name="agllergy" id="ag" value="A2">
								<label for="ag">우유</label> <input type="checkbox"
								name="agllergy" id="ag" value="A3"> <label for="ag">곡류</label>
								<input type="checkbox" name="agllergy" id="ag" value="A4">
								<label for="ag">갑각류</label> <input type="checkbox"
								name="agllergy" id="ag" value="A5"> <label for="ag">견과류</label>
							</td>
						</tr>
					</table>

					<!--02-10 스크립트 태그를 쓰는 게 나음 -->
					<script>
            	$(function(){
            		const agllergy = "<%= alg %>";
            		// 현재 로그인한 회원의 관심분야들
            		// "" | "운동, 등산, 게임"
            		console.log("제이쿼리");
            		$("input[type=checkbox]").each(function(){
            			// $(this): 순차적으로 접근되는 체크박스 요소
            			// $(this).val() : 해당 체크박스의 value 값 => 운동 등산 게임...
            			if(agllergy.search($(this).val()) != -1){
            				// -1 은 없고, 1은 있고
            				$(this).attr("checked", true);
            			}
            			
            		});
            	})	
            </script>
			<script>
				function validatePwd() {
					const memPwd=$("#memPwd").val();
					const checkPwd=$("#checkPwd").val()
					console.l
					if(memPwd==checkPwd){
						return true;
					}else{
						alert("변경할 비밀번호가 일치하지 않습니다. 다시 입력해주십시오");
						return false;
					}
				}
			</script>
					<br>
					<br>


					<div align="center">
						<button type="submit" class="btn delicious-btn btn-4 m-1"
							onclick="return validatePwd()">정보변경</button>
						<a href="#" class="btn delicious-btn btn-4 m-1"
							data-toggle="modal" data-target="#deleteModal">회원탈퇴</a>
					</div>

				</form>
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
							<b>탈퇴 후 복구가 불가능 합니다. <br> 정말로 탈퇴 하시겠습니까?
							</b> <br>
							<br> 비밀번호: <input type="password" name="userPwd" required>
							<input type="hidden" name="userId" value="<%= memId%>"><br>
							<br>
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
				<div
					class="col-12 h-100 d-flex flex-wrap align-items-center justify-content-between">


					<!-- Footer Social Info -->
					<div class="footer-social-info text-right">
						<a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
						<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
						<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a> <a
							href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a> <a
							href="#"><i class="fa fa-behance" aria-hidden="true"></i></a> <a
							href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
					</div>


					<!-- Footer Logo -->
					<div class="footer-logo">
						<a href="index.html"><img src="img/core-img/logo.png" alt=""></a>
					</div>




					<!-- Copywrite -->
					<p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>document.write(new Date().getFullYear());</script>
						All rights reserved | This template is made with <i
							class="fa fa-heart-o" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- ##### Footer Area Start ##### -->


</body>

</html>