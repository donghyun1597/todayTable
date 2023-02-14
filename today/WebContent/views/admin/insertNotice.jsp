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
.list-group-flush span {
	font-weight: 900;
	margin-left: 30px;
}

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
			<div class="container-fluid" style="width: 80%; height: 100%;" align="center">
				<br><br><br><br>
				<h1>공지사항 작성</h1>
				<hr>

				<form action="<%= contextPath %>/insertNotice.no">
					<table>
						<tr>
							<th style="text-align: left; padding-right: 10px;">제목</th>
							<td align="right">긴급&nbsp;<input type="checkbox" name="checkEmerge" value="긴급"></td>
						</tr>

						<tr>
							<td colspan="2"><input type="text" name="noticeTitle" style="width: 100%;"></td>
						</tr>
						
						<tr>
							<th colspan="2" name="noticeContent" style="text-align:left;">내용</th>
						</tr>

						<tr>
							<td colspan="2"><textarea name="noticeContent" cols="70" rows="10" style="resize: none;"></textarea></td>
						</tr>

						<tr>
							<td colspan="2" align="right"><button class="btn btn-sm btn-secondary">작성</button></td>
						</tr>
					</table>

					<script>


					</script>
				</form>

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
