<%@page import="com.todayTable.event.model.vo.Event"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Event ev = (Event)request.getAttribute("ev");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">

<link rel="icon" href="resources/image/core-img/favicon.ico">
<!-- Core Stylesheet -->
<link rel="stylesheet" href="resources/css/style.css">
<style>
    @import url(https://fonts.googleapis.com/css?family=Roboto:400,700,500);
    body {
        font-family: "Roboto", sans-serif;
    }
    #wrap {
        height: 1000px;
    }
    #notice {
            text-align: center;
    }
    hr {
            width: 800px;
            margin: auto;
    }
</style>
</head>
<body>
 <%@ include file="../common/menubar.jsp" %>
    <div id="wrap">
   	    <br><br>
    	<div id="notice">
            <!-- ----------------------------------------------------------------------------------------------------- -->
            <!-- ##### Breadcumb Area Start ##### -->
            <div class="breadcumb-area bg-img bg-overlay"
            style="background-image: url(img/bg-img/breadcumb2.jpg);">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <div class="col-12">
                        <div class="breadcumb-text text-center">
                            <h2>이벤트</h2>
                            <br>
                            <h6 style="color: white;">- 이벤트를 공유하는 '이벤트' 페이지입니다.</h6>
                        </div>
                    </div>
                </div>
            </div>
            </div> <br><br>
            <!-- ##### Breadcumb Area End ##### -->
            <!-- ----------------------------------------------------------------------------------------------------- -->
        
        <div class="notice-wrap" align="center">
            <table class="notice-area table-active" width="800px">
                <tr>
                    <th width="600px" height="50px" style="text-align: center; font-size: 20px;" colspan="3">
                    	<%= ev.getEventName() %>
                   	</th>
                </tr>
                <tr>
                    <td width="100px" colspan="3" style="text-align: right;"><%= ev.getEventDate() %></td>
                </tr>
                <tr>
                    <td colspan="3">
                        <pre><%= ev.getEventContents() %></pre>
                    </td>
                </tr>
            </table>
            <br><br>
            <a href="<%=contextPath%>/eventList.ev?cpage=1" class="btn btn-sm btn-primary">목록으로</a>
        </div>
    </div>
</div>
</body>
</html>