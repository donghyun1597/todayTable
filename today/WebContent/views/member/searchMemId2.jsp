<%@page import="com.todayTable.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Member member = (Member)request.getAttribute("members"); 
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script type="text/javascript" src="/js/jquery-3.3.1.js"></script>
<link rel="stylesheet" href="/css/bootstrap.css">
<link rel="stylesheet" href="/css/header/style.css">
<link rel="stylesheet" href="/css/header/responsive.css">
<script type="text/javascript" src="/js/bootstrap.js"></script>

    <title>Document</title>
    <style>
		*{
		margin : 0 auto;
		padding : 0;
	}
	#button{
		margin-left : 70px;
		margin-top : 20px;
	}
	#userName{
		color:#1f4e5f;
		text-align : center;
		font-size:15px;
	}
	#userId{
		text-align : center;
	}

    </style>
  </head>

  <body>
   <div class="wrap">


   <div id="userName">[<%= member.getMemId() %> ]님의 아이디</div><br>
   <div id="userId">[<%= member.getMemId() %> ] 입니다.</div>
   <button id="button" class="btn btn-outline-info " onclick="location.href='/views/member/login.jsp'">로그인 하러가기</button>
   </div>
</body>
</html>