<%@page import="com.todayTable.member.model.vo.Member"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.todayTable.recipe.model.vo.Recipe"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	ArrayList<Recipe> list = (ArrayList<Recipe>)request.getAttribute("list");
	Recipe myrecipe = (Recipe)session.getAttribute("myrecipe");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->


<title>Insert title here</title>


<style>

#mypage-form table {
	margin: auto;
}

#mypage-form table {
	margin: auto;
}

#mypage-form input {
	margin: 5px;
}

#t1 {
	width: 200px;
	height: 40px;
	text-align: left;
}

#t2 {
	width: 600px;
}

#sumin-col {
	flex: 0 0 25%;
}

#sumin-row {
	flex-wrap: wrap;
}

#content-510 {
	padding-left: 5%;
}

#box-sm {
	background-color: white;
	border: 2px solid rgb(224, 224, 224);
	width: 150px;
	height: 35px;
	border-radius: 20px;
	margin: 10px;
	margin-left: 50px;
	text-align: center;
	line-height: 35px;
}

.tag {
	box-sizing: border-box;
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	padding-top: 20px;
}

#tag-li {
	cursor: pointer;
	font-weight: bold;
}

.counter {
	color: gray;
	font-size: medium;
}

</style>

</head>
<body>

    <!-- ##### Breadcumb Area Start ##### -->
    <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/breadcumb2.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-text text-center">
                        <h2>myPage</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Breadcumb Area End ##### -->


</body>
 <!-- ##### All Javascript Files ##### -->
    
    <!-- ##### All Javascript Files ##### -->
    <!-- jQuery-2.2.4 js -->
    <script defer src="<%=application.getContextPath()%>/resources/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script defer src="<%=application.getContextPath()%>/resources/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script defer src="<%=application.getContextPath()%>/resources/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script defer src="<%=application.getContextPath()%>/resources/js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script defer src="<%=application.getContextPath()%>/resources/js/active.js"></script>
   
</html>