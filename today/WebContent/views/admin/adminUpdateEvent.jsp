<%@page import="com.todayTable.event.model.vo.Event"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Event ev = (Event)request.getAttribute("ev");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오늘의 식탁 관리자</title>
<link rel="icon" href="resources/image/core-img/favicon.ico">
</head>
<body>
	<div class="d-flex" id="wrapper">
		<%@ include file="adminMenubar.jsp" %>
		<div id="page-content-wrapper">
			<!-- Page content-->
			<div class="container-fluid" style="width: 80%; height: 100%;" align="center">
				<br><br><br><br>
				<h1>이벤트 수정</h1>
				<hr>

				<form action="<%= contextPath %>/update.ev">
				<input type="hidden" name="num" value="<%= ev.getEventNo() %>">
					<table>
						<tr>
							<th style="text-align: left; padding-right: 10px;">제목</th>
						
						</tr>

						<tr>
							<td colspan="2"><input type="text" name="eventTitle" style="width: 100%;" value="<%= ev.getEventName() %>"></td>
						</tr>
						<tr>
							<th colspan="2" style="text-align:left;">내용</th>
						</tr>

						<tr>
							<td colspan="2"><textarea name="eventContent" cols="70" rows="10" style="resize: none;"><%=ev.getEventContents() %></textarea></td>
						</tr>

						<tr>
							<td colspan="2" align="right"><button class="btn btn-sm btn-secondary">수정</button></td>
						</tr>
					</table>


				</form>

			</div>
		</div>
	</div>
</body>
</html>