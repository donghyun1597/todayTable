<%@page import="com.todayTable.notice.model.vo.Notice"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	Notice n = (Notice)request.getAttribute("n");
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
    .notice-area {
        padding-top: 50px;
        padding-bottom: 50px;
        padding-left: 50px;
        padding-right: 50px;
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
                        <h2>공지사항</h2>
                        <br>
                        <h6 style="color: white;">- 오늘의식탁 운영관련 글을 공지하는 '공지사항' 페이지입니다.</h6>
                    </div>
                </div>
            </div>
        </div>
    </div> <br><br>
    <!-- ##### Breadcumb Area End ##### -->
    <!-- ----------------------------------------------------------------------------------------------------- -->
        <div class="notice-wrap" align="center">
            
            <table class="notice-area table-active" width="800px" style="border: 3px solid darkgray;">
                <tr>
                    <th width="600px" height="100px" style="text-align: center; font-size: 20px;" colspan="3">
                    	<% if(n.getNoticeClsfc().equals("일반")) { %>
                    		<%= n.getNoticeName() %>
                   		<% } else if(n.getNoticeClsfc().equals("긴급")) { %>
                   			<p style="color:red; display:inline; font-size:18px; font-weight:900"><%= "[" + n.getNoticeClsfc() + "]   " %></p> <%= "  " + n.getNoticeName() %>
                   		<% } %>
                        <br><br>
                   	</th>
                </tr>
                <tr>
                    <td width="100px" height="100px" colspan="3" style="text-align: right;"><%= n.getNoticeDate() %></td>
                    <br><br>
                </tr>
                <tr>
                    <td colspan="3" height="100px">
                        <pre style="width: 800px;"><%= n.getNoticeContents() %></pre>
                    </td>
                </tr>
            </div>
            </table>
            
            <br><br>
            <a href="<%=contextPath%>/noticeList.no?cpage=1" class="btn btn-sm btn-primary">목록으로</a>
        </div>
    </div>
</div>
</body>
</html>