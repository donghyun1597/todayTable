<%@page import="com.todayTable.notice.model.vo.Notice"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Notice n = (Notice)request.getAttribute("n"); 
%>
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
				<h1>공지사항 수정</h1>
				<hr>

				<form action="<%= contextPath %>/update.no">
				<input type="hidden" name="num" value='<%=n.getNoticeNo() %>'>
					<table>
						<tr>
							<th style="text-align: left; padding-right: 10px;">제목</th>
							<% if(n.getNoticeClsfc().equals("긴급")) { %>
							<td align="right">긴급&nbsp;<input type="checkbox" name="checkEmerge" value="긴급" checked></td>
							<% } else { %>
							<td align="right">긴급&nbsp;<input type="checkbox" name="checkEmerge" value="긴급"></td>
							<% } %>
						</tr>

						<tr>
							<td colspan="2"><input type="text" name="noticeTitle" style="width: 100%;" value="<%=n.getNoticeName() %>"></td>
						</tr>
						<tr>
							<th colspan="2" style="text-align:left;">내용</th>
						</tr>

						<tr>
							<td colspan="2"><textarea name="noticeContent" cols="70" rows="10" style="resize: none;"><%=n.getNoticeContents() %></textarea></td>
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