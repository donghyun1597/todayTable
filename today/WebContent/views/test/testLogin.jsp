<%@page import="com.todayTable.member.model.vo.WishList"%>
<%@page import="com.todayTable.member.model.vo.Allergy"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.todayTable.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<% 
	String contextPath = request.getContextPath(); // /jsp
	
	
	
%>

<body>
	<form action="<%= contextPath %>/login.me">
		아이디: <input type="text" name="memId">
		<br>
		비밀번호 : <input type="text" name="memPwd">
		<br>
		<button type="submit">로그인</button>
	
	</form>
	
	<div>
		
		
		
	</div>
	
</body>
</html>