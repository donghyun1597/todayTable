<%@page import="com.todayTable.recipe.model.vo.Recipe"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.todayTable.common.model.vo.PageInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<Recipe> list = (ArrayList<Recipe>)request.getAttribute("list");
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
#recipeHead{
	color: white;
	text-align: center;
}

table{
	text-align: center;
	width: 800px;
}

#paging {
	  display: flex;
	  justify-content: center;
	}

tbody tr{
	cursor: pointer;
}
</style>
</head>
<body>
	<div class="d-flex" id="wrapper">
		<%@ include file="adminMenubar.jsp" %>
		<div id="page-content-wrapper">
			<br><br>
			<div id="recipeHead" style="background-color: rgb(240, 225, 210);">
				<br>
				<h1 class="foot"><b>RECIPE</b></h1>
				<br>
			</div>
			<br>

			<div class="m-4" id="noticeList">
				<table class="table table-striped" align="center" style="width:1000px">
					<thead>
						<tr>
							<th width="10%">글번호</th>
							<th width="60%">레시피명</th>
							<th width="20%">작성자</th>
							<th width="10%">작성일</th>
						</tr>
					</thead>
					<tbody>
						<% if(list.isEmpty()) { %>
							<tr>
								<td colspan="4">조회 된 레시피가 없습니다.</td>
							</tr>
						<% } else { %>
							<% for(Recipe r : list) { %>
							<tr>
								<td><%= r.getRecipeNo() %></td>
								<td><%= r.getRecipeName() %></td>
								<td><%= r.getMemId() %></td>
								<td><%= r.getRecipeDate() %></td>
							</tr>
							<% } %>
						<% } %>
					</tbody>
				</table>
			</div>

			<script>
				$(function(){
					$("tbody>tr").click(function(){
						const num = $(this).children().eq(0).text();

						location.href = '<%=contextPath%>/recipeView.rc?recipeNo=' + num;

					})
				})
			</script>

			<div class="m-4" id="paging">
				<nav>
					<div class="pagination">
						<%if(currentPage != 1) { %>
						<button onclick="location.href='<%=contextPath%>/adminRecipe.re?cpage=<%= currentPage -1 %>';" class="page-link"> &lt; </button>
						<% } %>
						
						<%for(int p = startPage; p<=endPage; p++) { %>
							<% if(p == currentPage){ %>
								<button style="color: orange" disabled><%=p %></button>
							<%}else{ %>
								<button onclick="location.href = '<%= contextPath%>/adminRecipe.re?cpage=<%=p%>';" class="page-link"><%=p %></button>
							<%} %>
						<%} %>
						
						<%if(currentPage != maxPage) {%>
							<button onclick="location.href='<%=contextPath%>/adminRecipe.re?cpage=<%= currentPage +1 %>';" class="page-link"> &gt; </button>
						<%} %>
					</div>
				</nav>
			</div>
		</div>
		
	</div>
</body>
</html>