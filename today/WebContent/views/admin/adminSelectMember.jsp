<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath(); %>
<!-- contextPath = localhost:8002/today -->
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>오늘의 식탁 관리자</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="<%= contextPath %>/resources/css/styles.css"
	rel="stylesheet" />
<style>

</style>
</head>

<body>
	<div class="d-flex" id="wrapper">
		<!-- Sidebar-->
		<div class="border-end bg-white" id="sidebar-wrapper">
			<div class="sidebar-heading bg-light"
				style="width: 180px; margin: auto; padding: 0px;">
				<img src="<%= contextPath %>/resources/image/logo.jpg" alt=""
					style="box-sizing: border-box; width: 100%; height: 100%;">
			</div>
			<div class="list-group list-group-flush">
				<a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!" style="border-top: 1px solid #dee2e6;"><span>메인사진변경</span></a>
				<a class="list-group-item list-group-item-action list-group-item-light p-3"	href="<%= contextPath %>/adminSelectMember.mem"><span>회원관리</span></a>
				<a class="list-group-item list-group-item-action list-group-item-light p-3"	href="<%= contextPath %>/adminNotice.no"><span>공지사항관리</span></a> 
				<a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!"><span>문의/신고관리</span></a>
				<a class="list-group-item list-group-item-action list-group-item-light p-3" href="<%= contextPath %>/adminLogout.me"><span>로그아웃</span></a>
			</div>
		</div>
		<!-- Page content wrapper-->
		<div id="page-content-wrapper">
		
			<!-- Page content-->
			<div class="container-fluid" style="width:1000px; height:800px;">
				<br><br>
				<h2 align="center">회원조회</h2>
				<hr>

				<table align="center">
					<thead>
						<tr>
							<th>선택</th>
							<th>회원번호</th>
							<th>아이디</th>
							<th>닉네임</th>
							<th>이름</th>
							<th>전화번호</th>
							<th>경고횟수</th>
						</tr>
					</thead>
					
					<tbody>
						<tr style="text-align: center;">
							<td><input type="checkbox" name="checkMember"></td>
							<td>xx</td>
							<td>xx</td>
							<td>xx</td>
							<td>xx</td>
							<td>xx</td>
							<td>xx</td>
						</tr>
					</tbody>
				</table>

			</div>
		</div>
	</div>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="<%= contextPath %>/resources/js/scripts.js"></script>
</body>
</html>
