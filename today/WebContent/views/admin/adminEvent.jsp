<%@page import="com.todayTable.common.model.vo.PageInfo"%>
<%@page import="com.todayTable.event.model.vo.Event"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<Event> list = (ArrayList<Event>)request.getAttribute("list");

	PageInfo pi = (PageInfo)request.getAttribute("pi");
	
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오늘의 식탁 관리자</title>
<link rel="icon" href="resources/image/core-img/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">

<style>
	@import url(https://fonts.googleapis.com/css?family=Roboto:400,700,500);
	body {
		font-family: "Roboto", sans-serif;
	}
	#wrap {
		height: 1000px;
	}
	#paging {
	  display: flex;
	  justify-content: center;
	}
	th {
		text-align: center;
	}
	.dropdown-toggle {
		background-color: white;
		color: gray;
	}
	button {
		display: inline-block;
	}
	input {
		display: inline-block;
	}
	#notice {
		text-align: center;
	}
	#noticeList {
		display: flex;
	  justify-content: center;
	}
	hr {
		margin: auto;
		width: 800px;
	}
	h6 {
		color: gray;
		text-align: center;
		font-size: 14px;
	}
	td a {
		color: black;
		text-decoration: none;
	}
	.btn-group button{
		border-color: lightgray;
	}

	tbody tr{
		cursor: pointer;
	}

	#eventHead {
		color: white;
	}
</style>
</head>
<body>
	<div class="d-flex" id="wrapper">
		<%@ include file="adminMenubar.jsp" %>
		<div id="page-content-wrapper">
			<br><br>
			<div id="notice">
				<div id="eventHead" style="background-color: rgb(240, 225, 210);">
					<br>
					<h1 class="foot"><b>이벤트</b></h1>
					<br>
					<h6 style="color: white; font-weight: bold;">- 오늘의식탁의 이벤트 관련 글을 공지하는 '이벤트' 페이지입니다.</h6>
					<br>
				</div>
				<div class="m-4" id="noticeList">
					<table class="table table-striped" style="width: 800px;">
						<thead>
							<tr>
								<td colspan="4" align="right"><a href="<%= contextPath %>/insertForm.ev" class="btn btn-sm btn-secondary"><b>이벤트 등록</b></a></td>
							</tr>
							<tr>
								<th style="width: 10%;">글번호</th>
								<th style="width: 10%;">진행여부</th>
								<th style="width: 60%;">제목</th>
								<th style="width: 20%;">작성일</th>
							</tr>
						</thead>
						<tbody>
						<% if(list.isEmpty()) { %>
							<tr>
								<td colspan="4">진행 중인 이벤트가 없습니다.</td>
							</tr>
						<% } else {%>
						<% for(Event e : list) { %>
							<tr> 
								<td><%= e.getEventNo() %></td>
								<td><%= (e.getEventProcessing().equals("Y")) ? "진행" : "종료" %></td>
								<td><%= e.getEventName() %></td>
								<td><%= e.getEventDate() %></td>
							</tr>
							<% } %>
						<% } %>
						</tbody>
					</table>

					<script>
						$(function(){
							$("tbody>tr").click(function(){
								const num = $(this).children().eq(0).text();

								location.href = '<%=contextPath%>/detail.ev?num=' + num;

							})
						})
					</script>

				</div>
			</div>
			<div class="m-4" id="paging">
				<nav>
					<div class="pagination">
						<%if(currentPage != 1) { %>
						<button onclick="location.href='<%=contextPath%>/adminEvent.ev?cpage=<%= currentPage -1 %>';" class="page-link"> &lt; </button>
						<% } %>
						
						<%for(int p = startPage; p<=endPage; p++) { %>
							<% if(p == currentPage){ %>
								<button style="color: orange" disabled><%=p %></button>
							<%}else{ %>
								<button onclick="location.href = '<%= contextPath%>/adminEvent.ev?cpage=<%=p%>';" class="page-link"><%=p %></button>
							<%} %>
						<%} %>
						
						<%if(currentPage != maxPage) {%>
							<button onclick="location.href='<%=contextPath%>/adminEvent.ev?cpage=<%= currentPage +1 %>';" class="page-link"> &gt; </button>
						<%} %>
					</div>
				</nav>
			</div>
		</div>
		
	</div>
</body>
</html>