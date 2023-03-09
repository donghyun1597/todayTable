<%@page import="com.todayTable.member.model.vo.Member"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% ArrayList<Member> list = (ArrayList<Member>)request.getAttribute("list"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오늘의 식탁 관리자</title>
<link rel="icon" href="resources/image/core-img/favicon.ico">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
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

				<table align="center" class="table table-striped" style="width:800px">
					<thead>
						<tr style="text-align: center;">
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
							<td class="clickMem" width="80"><%= m.getMemNo() %></td>
							<td class="clickMem" width="60"><%= m.getMemId() %></td>
							<td class="clickMem" width="100"><%= m.getNickName() %></td>
							<td class="clickMem" width="100"><%= m.getMemName() %></td>
							<td class="clickMem" width="200"><%= m.getPhone() %></td>
							<td class="clickMem" width="80"><%= m.getWarningCount() %></td>
						</tr>
						<% } %>
					</tbody>
				</table>
				<div align="center">
					<br>
					
					<button class="btn btn-sm btn-primary" onclick="">삭제</button>
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
				<div class="container">
					<!-- Button to Open the Modal -->
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" id="openModal" style="display: none;">
					  Open modal
					</button>
				  
					<!-- The Modal -->
					<div class="modal" id="myModal">
					  <div class="modal-dialog">
						<div class="modal-content">
						
						  <!-- Modal Header -->
						  <div class="modal-header">
							<h4 class="modal-title"></h4>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						  </div>
						  
						  <!-- Modal body -->
						  <form action="sanction.me">
							  <div class="modal-body">
								<input type="hidden" name="mNo" id="mNo" value="">
								<input type="hidden" id="mId" value="">
								<input type="hidden" name="warningCount" id="warningCount" value="">
								<select name="sanction" style="width:100%; text-align: center;">
									<option value="delete">회원탈퇴</option>
									<option value="warning">경고 1회</option>
								</select>
								<hr>
								<p></p>
							  </div>
							  
							  <!-- Modal footer -->
							  <div class="modal-footer">
								<button type="submit" class="btn btn-danger">적용</button>
							  </div>
						  </form>
						</div>
					  </div>
					</div>
					<script>
						$(function(){
							$(".clickMem").click(function(){
								$("#openModal").click();

								const $num = $(this).siblings().eq(0).text();
								const $id = $(this).siblings().eq(1).text();
								const $warningCount = $(this).siblings().eq(4).text();
								
								$("#mNo").val($num);
								$("#mId").val($id);
								$("#warningCount").val($warningCount);
								console.log($("#mNo").val());
								console.log($("#mId").val());
								console.log($("#warningCount").val());
								
								$(".modal-title").html('회원제재' + " (" + $("#mId").val() + ")");

								$(".modal-body>p").html($("#mId").val() + '의 경고회수: ' + $("#warningCount").val() + '회');
							})
						})
					</script>
				  </div>
			</div>
	</div>
</body>
</html>