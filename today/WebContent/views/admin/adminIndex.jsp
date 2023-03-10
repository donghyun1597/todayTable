<%@page import="com.todayTable.admin.main.model.vo.Count"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Count c = (Count)request.getAttribute("c");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오늘의 식탁 관리자</title>
<link rel="icon" href="resources/image/core-img/favicon.ico">
<style>
	#alarm-wrap{
		width: 1500px;
		height: 800px;
	}


	#top-left, #top-right, #bottom-left, #bottom-right{
		text-align: left;
		box-sizing: border-box;
		width: 1200px;
		padding: 10px;
		background-color: #f0f4f7;
		margin: 25px;
		border-radius: 8px;
	}

	div>p{
		margin-bottom: 0;
	}

	p>a{
		text-decoration: none;
		color: black;
	}

	b{
		font-size: 25px;
	
	}

</style>
</head>
<body>
	<div class="d-flex" id="wrapper">
		<%@ include file="adminMenubar.jsp" %>
		<div id="page-content-wrapper">
			<br>
			<h4 style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; font-size: 30px;">TODAY TABLE ADMIN</h4>
			<hr>
			
			<div id="alarm-wrap">
				<div id="top-left">
					<b>회원관리</b>
					<hr>
					<p>오늘의 식탁의 회원수는 <b><a href="<%=contextPath%>/adminSelectMember.mem"><%= c.getMemCount() %></a></b>명 입니다.</p>
				</div>
				<div id="top-right">
					<b>문의관리</b>
					<hr>
					<p>처리대기 중인 문의가 <b><a href="<%= contextPath %>/adminInquiryForm.iq?cpage=1"><%= c.getInquiryCount() %></a></b>건이 있습니다.</p>
				</div>
				
				<div id="bottom-right">
					<b>이벤트</b>
					<hr>
					<p>
						현재 진행중인 이벤트 <b><a href="<%= contextPath %>/adminEvent.ev?cpage=1"><%= c.getEventCount() %></a></b>건이 있습니다.<br>
						
					</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>