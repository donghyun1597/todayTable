<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% 
	String contextPath = request.getContextPath();
	String alertMsg = (String)session.getAttribute("alertMsg");
%>
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
<link href="<%=contextPath%>/resources/css/adminStyles.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<style>
	.list-group-flush span {
					font-weight: 900;
					margin-left: 30px;
							}

</style>
</head>

<body>
	
		<!-- Sidebar-->
		<div class="border-end bg-white" id="sidebar-wrapper">
			<div class="sidebar-heading bg-light" style="width: 180px; margin: auto; padding: 0px;">
				<a href="/adminMain.ad"><img src="<%= contextPath %>/resources/image/logo.png" alt="" style="box-sizing: border-box; width: 100%; height: 100%;"></a>
			</div>
			<div class="list-group list-group-flush">
				<a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!" style="border-top: 1px solid #dee2e6;"><span>메인사진변경</span></a>
				<a class="list-group-item list-group-item-action list-group-item-light p-3"	href="<%= contextPath %>/adminSelectMember.mem"><span>회원관리</span></a>
				<a class="list-group-item list-group-item-action list-group-item-light p-3"	href="#"><span>게시글관리</span></a>
				<a class="list-group-item list-group-item-action list-group-item-light p-3"	href="<%= contextPath %>/adminNotice.no"><span>공지사항관리</span></a>
				<a class="list-group-item list-group-item-action list-group-item-light p-3"	href="<%= contextPath %>/adminEvent.ev"><span>이벤트관리</span></a> 
				<a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!"><span>문의/신고관리</span></a>
				<a class="list-group-item list-group-item-action list-group-item-light p-3" href="<%= contextPath %>/adminLogout.me"><span>로그아웃</span></a>
			</div>
		</div>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
		<!-- Core theme JS-->
		<script src="<%= contextPath %>/resources/js/scripts.js"></script>
</body>
</html>