<%@page import="com.todayTable.customerCenter.model.vo.Inquiry"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	ArrayList<Inquiry> list = (ArrayList<Inquiry>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

<link rel="icon" href="resources/image/core-img/favicon.ico">
<!-- Core Stylesheet -->
<!-- <link rel="stylesheet" href="resources/css/style.css"> -->

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
        display: inline-block;
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
    .btn-group button{
        border-color: lightgray;
    }
    .pri {
        color: gray;
    }
</style>
</head>
<body>
	<div class="d-flex" id="wrapper">
		<%@ include file="adminMenubar.jsp" %>
		<div id="page-content-wrapper" align="center">
            <div id="wrap">
                <br><br>
                <h1 class="foot"><b>1:1 문의</b></h1>
                <br>
                <hr>
                <br><br>
                <div class="m-4" id="noticeList">
                    <table class="table table-striped" style="width: 800px;">
                        <thead>
                            <th style="width: 10%;">글번호</th>
                            <th style="width: 50%;">제목</th>
                            <th style="width: 15%;">답변여부</th>
                            <th style="width: 10%;">작성자</th>
                            <th style="width: 15%;">작성일</th>
                        </thead>
                        <tbody id="listbody">
                            <% if(list.isEmpty()) { %>
                            	<tr>
                            		<td colspan="5">등록된 문의사항이 없습니다.</td>
                            	</tr>
                            <% } else { %>
                            	<% for(Inquiry i : list) { %>
                            	<tr>
                            		<td><%= i.getInqNo() %></td>
                            		<td><%= i.getInqName() %></td>
                            		<td><%= i.getInqProcessing() %></td>
                            		<td><%= i.getMemNo() %></td>
                            		<td><%= i.getInqDate() %></td>
                            		<% } %>
                           		<% } %>
                        </tbody>
                    </table>
                </div>
            </div>
		</div>
		
	</div>
</body>
</html>