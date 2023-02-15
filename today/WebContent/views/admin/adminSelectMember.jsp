<%@page import="com.todayTable.member.model.vo.Member"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% ArrayList<Member> list = (ArrayList<Member>)request.getAttribute("list"); %>
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
						<% for(Member m : list) { %>
						<tr style="text-align: center;">
							<td><input type="checkbox" name="checkMember"></td>
							<td><%= m.getMemNo() %></td>
							<td><%= m.getMemId() %></td>
							<td><%= m.getNickName() %></td>
							<td><%= m.getMemName() %></td>
							<td><%= m.getPhone() %></td>
							<td><%= m.getWarningCount() %></td>
						</tr>
						<% } %>
					</tbody>
				</table>

			</div>
		</div>
	</div>
</body>
</html>