<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="icon" href="resources/image/core-img/favicon.ico">
<style>


</style>
</head>

<body>
	<div class="d-flex" id="wrapper">
		<%@ include file="adminMenubar.jsp" %>
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


				</form>

			</div>
		</div>
	</div>
</body>
</html>
