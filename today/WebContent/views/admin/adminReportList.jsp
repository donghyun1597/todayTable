<%@page import="com.todayTable.customerCenter.model.vo.Report"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.todayTable.common.model.vo.PageInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<Report> list = (ArrayList<Report>)request.getAttribute("list"); 

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
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<style>
	@import url(https://fonts.googleapis.com/css?family=Roboto:400,700,500);
	body {
		font-family: "Roboto", sans-serif;
	}

	#reportWrap{
		background-color: rgb(240, 225, 210);
		color: white;
		margin-top: 50px;
		font-weight: 900;
	}

	#report{
		margin: auto;
	}
	#paging {
	  display: flex;
	  justify-content: center;
	}

	tbody>tr{
		cursor: pointer;
	}
</style>
</head>
<body>
	<div class="d-flex" id="wrapper">
		<%@ include file="adminMenubar.jsp" %>
		<div id="page-content-wrapper">
			<div id="reportWrap" align="center">
				<br>
				<h1 class="foot" align="center"><b>신고관리</b></h1>
				<hr>
				<p>- 신고받은 게시물 확인 및 신고 대상자 제재 처리</p>
				<br>
			</div>

			<div style="margin: auto; margin-top: 30px; width:800px; height:auto">
				<table id="report" align="center" class="table table-striped" width="100%">
					<thead>
						<tr style="text-align:center;">
							<th width="10%">신고번호</th>
							<th width="30%">신고분류</th>
							<th width="30%">신고자</th>
							<th width="10%">신고진행</th>
							<th width="20%">신고일자</th>
						</tr>
					</thead>
					<tbody>
					<% if(list.isEmpty()) { %>
						<tr>
							<th colspan="4"> 조회된 신고가 없습니다</th>
						</tr>
					<% } else { %>
						<% for(Report r : list) { %>
							<% if(r.getRepProcessing().equals("N")) { %>
							<tr style="text-align:center;">
								<th><%= r.getRepNo() %></th>
								<th><%= r.getRepClsfc() %></th>
								<th><%= r.getMemId() %></th>
								<th><%= r.getRepProcessing() %></th>
								<th><%= r.getRepDate() %></th>
							</tr>
							<% } else { %>
							<tr style="text-align:center;">
								<td><%= r.getRepNo() %></td>
								<td><%= r.getRepClsfc() %></td>
								<td><%= r.getMemId() %></td>
								<td><%= r.getRepProcessing() %></td>
								<td><%= r.getRepDate() %></td>
							</tr>
							<%} %>
						<% } %>
					<% } %>
					</tbody>					
				</table>

				<script>
					$(function(){
						$("tbody>tr").click(function(){
							const num = $(this).children().eq(0).text();

							location.href = "<%= contextPath %>/detail.re?num=" + num;
						})
					})
				</script>
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