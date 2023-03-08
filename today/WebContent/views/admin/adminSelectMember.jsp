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
<style>
	
</style>
</head>
<body>
	<div class="d-flex" id="wrapper">
		<%@ include file="adminMenubar.jsp" %>
		<div id="page-content-wrapper">
		
			<!-- Page content-->
				<div style="background-color: rgb(240, 225, 210); margin-top: 50px;">
					<br>
					<h2 align="center" style="color:white; font-weight: bold;">회원조회</h2>
					<hr>
				</div>

				<table align="center" class="table-area">
					<thead>
						<tr style="text-align: center;">
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
							<td width="40"><input type="checkbox" name="checkMember" value="<%= m.getMemNo() %>"></td>
							<td width="80"><%= m.getMemNo() %></td>
							<td width="60"><%= m.getMemId() %></td>
							<td width="100"><%= m.getNickName() %></td>
							<td width="100"><%= m.getMemName() %></td>
							<td width="200"><%= m.getPhone() %></td>
							<td width="80"><%= m.getWarningCount() %></td>
						</tr>
						<% } %>
					</tbody>
				</table>
				<div align="right" style="margin-right: 180px;">
					<br>
					
					<button class="btn btn-sm btn-primary">삭제</button>
				</div>
				<div align="center">
					<br>
					<form action="search.mem">
						<select name="searchOption">
							<option value="memId">아이디</option>
							<option value="nickname">닉네임</option>
						</select>
						<input type="search" name="searchContent">
						<button type="submit">검색</button>
					</form>
				</div>
			</div>
	</div>
</body>
</html>