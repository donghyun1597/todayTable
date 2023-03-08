<%@page import="com.todayTable.common.model.vo.PageInfo"%>
<%@page import="com.todayTable.notice.model.vo.Notice"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");
	
	String searchOption = (String)request.getAttribute("searchOption");
	String searchText = (String)request.getAttribute("searchText");
	
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
        <script src="resources/js/jquery/jquery-2.2.4.min.js"></script>
    
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
    .btn-group button{
        border-color: lightgray;
    }
    tr{
        cursor: pointer;
    }
    </style>

    <script>
        $(document).ready(function() {
        $(".searchSelect").attr("style","display:inline");
        $(".nice-select").remove("div");
    });
    </script>

</head>
<body>

<%@ include file = "../common/menubar.jsp" %>

<div id="wrap">
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
    <div class="m-4" id="noticeList">
        <table class="table table-striped"  style="width: 800px;">
            <thead>
                <tr>
                    <th style="width: 10%;">글번호</th>
                    <th style="width: 15%;">분류</th>
                    <th style="width: 55%;">제목</th>
                    <th style="width: 20%;">작성일</th>
                </tr>
            </thead>
            <tbody>
            	<%int i=0; %>
            	<!-- case1. 공지글 없음 -->
            	<%if(list.isEmpty()) { %>
           		<tr>
                    <td colspan="4">존재하는 공지사항이 없습니다.</td>
                </tr>
                <% }else { %>
                <!-- case2. 공지글 있음 -->
                <% for(Notice n :list) { %>
                <tr onclick="detailNo(<%= n.getNoticeNo() %>);">
                    <td id="detailNo<%=i++%>"><%= n.getNoticeNo() %></td>
                    <td><%= n.getNoticeClsfc() %></td>
                    <td style="text-align: left;"><%= n.getNoticeName() %></td>
                    <td><%= n.getNoticeDate() %></td>
                </tr>
                <% } %>
                <% } %>
            </tbody>
        </table>
    </div>

    <script>
    	function detailNo(noticeNo){
            location.href = '<%= contextPath %>/detail.no?num=' + noticeNo;
        }
    </script>

    <div class="m-4" id="paging">
        <nav>
            <div class="pagination">
		        <%if(currentPage != 1) { %>
                <button onclick="location.href='<%=contextPath%>/searchNotice.no?cpage=<%= currentPage -1 %>&searchOption=<%= searchOption %>&searchText=<%= searchText %>';" class="page-link"> &lt; </button>
                <% } %>
                
                <%for(int p = startPage; p<=endPage; p++) { %>
                	<% if(p == currentPage){ %>
                		<button style="color: orange" disabled><%=p %></button>
                	<%}else{ %>
                	    <button onclick="location.href='<%= contextPath%>/searchNotice.no?cpage=<%=p%>&searchOption=<%= searchOption %>&searchText=<%= searchText %>';" class="page-link"><%=p %></button>
		        	<%} %>
		        <%} %>
		        
		        <%if(currentPage != maxPage) {%>
		        	<button onclick="location.href='<%=contextPath%>/searchNotice.no?cpage=<%= currentPage +1 %>&searchOption=<%= searchOption %>&searchText=<%= searchText %>';" class="page-link"> &gt; </button>
		        <%} %>
            </div>
        </nav>
    </div>

    <div class="col-5" style="margin:auto">
        <form action="searchNotice.no?cpage=1" method="post">
        <div class="btn-group">
            <select name="searchOption" class="btn btn-outline-secondary searchSelect" style="border-color: darkgray;">
                <option value="title">제목&nbsp;&nbsp;&nbsp;</option>
                <option value="content">내용&nbsp;&nbsp;&nbsp;</option>
                <option value="titleContent">제목+내용&nbsp;&nbsp;</option>
            </select>
            <input type="text" name="searchText" class="form-control" placeholder="검색어 입력" style="border-color: rgb(108, 117, 125); border-radius: 0%;">
            <button type="submit" class="btn btn-primary">
                <i class="bi-search"></i>
            </button>
        </div>
        </form>
    </div>
    
</div>
</div>


    <!-- ##### All Javascript Files ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="resources/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="resources/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="resources/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="resources/js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="resources/js/active.js"></script>
</body>
</html>