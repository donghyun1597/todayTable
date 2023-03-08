<%@page import="com.todayTable.common.model.vo.PageInfo"%>
<%@page import="com.todayTable.notice.model.vo.Notice" %>
<%@page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
	ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>

<!-- contextPath = localhost:8002/today -->
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>오늘의 식탁 관리자</title>

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
		width: 800px;
		margin: auto;
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

	.btn-group button {
		border-color: lightgray;
	}

	.content{
            cursor: pointer;
    }

	#noticeHead{
		background-color: rgb(240, 225, 210);
	}
	
	#noticeHead *{
		color: white;
		font-weight: bold;
	}
</style>
</head>

<body>
	<div class="d-flex" id="wrapper">
	<%@ include file="adminMenubar.jsp" %>
	
		<!-- Page content wrapper-->
		<div id="page-content-wrapper">

			<!-- Page content-->
				<div id="wrap">
					<br>
					<br>
					<div id="notice">
						<div id="noticeHead">
							<br>
							<h1 class="foot"><b>공지사항</b></h1>
							<br>
							<h6>- 오늘의식탁 운영관련 글을 공지하는 '공지사항' 페이지입니다.</h6>
							<br>
						</div>
						<div class="notice-wrapper">
							<div class="m-4" id="noticeList">
								<table class="table table-striped" style="width: 800px;">
									<thead>
										<tr>
											<td colspan="5" align="right">
												<a class="btn btn-sm btn-secondary"	href="<%= contextPath %>/insertNoticeForm.no"><b>공지사항 작성</b></a></td>
										</tr>
										<tr>
											<th style="width: 10%;">선택</th>
											<th style="width: 10%;">글번호</th>
											<th style="width: 10%;">분류</th>
											<th style="width: 50%;">제목</th>
											<th style="width: 20%;">작성일</th>
										</tr>
									</thead>
									<tbody>
										<!-- case1. 공지글 없음 -->
											<% if(list.isEmpty()) { %>
												<tr>
													<td colspan="5">존재하는 공지사항이 없습니다.</td>
												</tr>
												<% } else { %>
													<!-- case2. 공지글 있음 -->
												<form action="deleteNotice.no">
													<% for(Notice n :list) { %>
												<tr id="noticetr">
													<td>
														<input type="checkbox" name="noticeCheck" value="<%= n.getNoticeNo()%>">
													</td>
													<td>
														<%= n.getNoticeNo()%>
													</td>
													<td>
														<%= n.getNoticeClsfc()%>
													</td>
													<td style="text-align: left;"  class="content">
															<%= n.getNoticeName()%>
													</td>
													<td>
														<%= n.getNoticeDate()%>
													</td>
												</tr>
													<% } %>
												<% } %>
									</tbody>
								</table>
							</div>
							<div style="width: 800px; margin: auto;" align="right">
								<button type="submit" id="checkDelete" class="btn btn-sm btn-warning" onclick="return confirm('선택된 게시물을 삭제하시겠습니까?');">삭제</button>
							</div>
												</form>

						</div>

						<script>
						$(function(){
							$(".content").click(function(){
								const num = $(this).siblings().eq(1).text();

								console.log(num);

								location.href = '<%=contextPath%>/adminDetail.no?num=' + num;
							})
						})
						
					
						</script>
							
							<div class="m-4" id="paging">
								<nav>
									<div class="pagination">
										<%if(currentPage != 1) { %>
										<button onclick="location.href='<%=contextPath%>/adminNotice.no?cpage=<%= currentPage -1 %>';" class="page-link"> &lt; </button>
										<% } %>
										
										<%for(int p = startPage; p<=endPage; p++) { %>
											<% if(p == currentPage){ %>
												<button style="color: orange" disabled><%=p %></button>
											<%}else{ %>
												<button onclick="location.href = '<%= contextPath%>/adminNotice.no?cpage=<%=p%>';" class="page-link"><%=p %></button>
											<%} %>
										<%} %>
										
										<%if(currentPage != maxPage) {%>
											<button onclick="location.href='<%=contextPath%>/adminNotice.no?cpage=<%= currentPage +1 %>';" class="page-link"> &gt; </button>
										<%} %>
									</div>
								</nav>
							</div>

						
					</div>

			</div>
		</div>
	</div>

</body>

</html>