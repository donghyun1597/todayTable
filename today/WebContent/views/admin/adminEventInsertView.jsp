<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="d-flex" id="wrapper">
		<%@ include file="adminMenubar.jsp" %>
		<div id="page-content-wrapper">
		
			<!-- Page content-->
			<div class="container-fluid" style="width: 80%; height: 100%;" align="center">
				<br><br><br><br>
				<h1>이벤트 등록</h1>
				<hr>

				<form action="<%= contextPath %>/insert.ev">
					<table>
						<tr>
							<th style="text-align: left; padding-right: 10px;" colspan="2">제목</th>
						</tr>

						<tr>
							<td colspan="2"><input type="text" name="eventTitle" style="width: 100%;"></td>
						</tr>
						
						<tr>
							<th colspan="2" style="text-align:left;">내용</th>
						</tr>

						<tr>
							<td colspan="2"><textarea name="eventContent" cols="70" rows="10" style="resize: none;"></textarea></td>
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