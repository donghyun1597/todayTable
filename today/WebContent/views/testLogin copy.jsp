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
<style>
	*{
    padding: 0;
    margin: 0;
    border: none;
}
body{
    font-size: 14px;
    font-family: 'Roboto', sans-serif;
}

.login-wrapper{
    width: 400px;
    height: 350px;
    padding: 40px;
    box-sizing: border-box;
}

.login-wrapper > h2{
    font-size: 24px;
    color: #6A24FE;
    margin-bottom: 20px;
}
#login-form > input{
    width: 100%;
    height: 48px;
    padding: 0 10px;
    box-sizing: border-box;
    margin-bottom: 16px;
    border-radius: 6px;
    background-color: #F8F8F8;
}
#login-form > input::placeholder{
    color: #D2D2D2;
}
#login-form > input[type="submit"]{
    color: #fff;
    font-size: 16px;
    background-color: #6A24FE;
    margin-top: 20px;
}

#login-form > input[type="checkbox"]{
    display: none;
}
#login-form > label{
    color: #999999;
}
#login-form input[type="checkbox"] + label{
    cursor: pointer;
    padding-left: 26px;
    background-image: url("checkbox.png");
    background-repeat: no-repeat;
    background-size: contain;
}
#login-form input[type="checkbox"]:checked + label{
    background-image: url("checkbox-active.png");
    background-repeat: no-repeat;
    background-size: contain;
}
</style>
</head>
<% 
	String contextPath = request.getContextPath(); // /jsp
	
	
	
%>

<body>
    <div class="login-wrapper" align="center">
        <h2><img src="../../resources/image/person.png" alt="" width="20px"> Login</h2>
        <form method="post" action="test.do" id="login-form">
			<input type="text" name="userName" placeholder="Email">
			<input type="password" name="userPassword" placeholder="Password">

			<label for="remember-check">
                <input type="checkbox" id="remember-check">아이디 저장하기
            </label>
         

            <input type="submit" value="Login">
			<div align="center">
				<button id="idFind">ID찾기</button> / 
				<button id="pwFind">비밀번호 찾기</button>	
			</div>
        </form>
    </div>
</body>
</html>