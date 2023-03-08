<%@page import="com.todayTable.common.model.vo.PageInfo"%>
<%@page import="com.todayTable.customerCenter.model.vo.Inquiry"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	ArrayList<Inquiry> list = (ArrayList<Inquiry>)request.getAttribute("list");

    PageInfo pi = (PageInfo)request.getAttribute("pi");
	
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
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
        height: auto;
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

    #inquiryWrap{
        background-color: rgb(240, 225, 210);
        color: white;
        font-weight: 900;
        margin-top: 50px;
    }

    #inquiryWrap>h6{
        color: white;
        font-weight: 900;
    }

    tr>td, tr>.needAnswer{
        cursor: pointer;
    }
</style>
</head>
<body>
	<div class="d-flex" id="wrapper">
		<%@ include file="adminMenubar.jsp" %>
		<div id="page-content-wrapper" align="center">
            <div id="wrap">
                <div id="inquiryWrap">
                    <br>
                    <h1 class="foot"><b>1:1 문의</b></h1>
                    <hr>
                    <h6>- 회원님들의 궁금한 점을 등록하여 답변받을 수 있는 '1:1문의' 페이지입니다.</h6>
                    <br>
                </div>
                <div class="m-4" id="noticeList">
                    <table class="table table-striped" style="width: 800px; text-align:center;">
                        <thead>
                            <tr>
                                <th style="width: 10%;">글번호</th>
                                <th style="width: 50%;">제목</th>
                                <th style="width: 15%;">답변여부</th>
                                <th style="width: 10%;">작성자</th>
                                <th style="width: 15%;">작성일</th>
                            </tr>
                        </thead>
                        <tbody id="listbody">
                            <% if(list.isEmpty()) { %>
                            	<tr>
                            		<td colspan="5">등록된 문의사항이 없습니다.</td>
                            	</tr>
                            <% } else { %>
                            	<% for(Inquiry i : list) { %>
                            		<% if(i.getInqProcessing().equals("N")) { %>
	                            		<tr>
		                            		<th class="needAnswer"><%= i.getInqNo() %></th>
		                            		<th class="needAnswer"><%= i.getInqName() %></th>
		                            		<th class="needAnswer"><%= (i.getInqProcessing().equals("Y")) ? "처리완료" : "처리대기" %></th>
		                            		<th class="needAnswer"><%= i.getMemId() %></th>
		                            		<th class="needAnswer"><%= i.getInqDate() %></th>
		                            	</tr>
                            		<% } else { %>
		                            	<tr>
		                            		<td><%= i.getInqNo() %></td>
		                            		<td><%= i.getInqName() %></td>
		                            		<td><%= (i.getInqProcessing().equals("Y")) ? "처리완료" : "처리대기" %></td>
		                            		<td><%= i.getMemId() %></td>
		                            		<td><%= i.getInqDate() %></td>
		                            	</tr>
	                            		<% } %>
                            		<% } %>
                           		<% } %>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="m-4" id="paging">
				<nav>
					<div class="pagination">
						<%if(currentPage != 1) { %>
						<button onclick="location.href='<%=contextPath%>/adminInquiryForm.iq?cpage=<%= currentPage -1 %>';" class="page-link"> &lt; </button>
						<% } %>
						
						<%for(int p = startPage; p<=endPage; p++) { %>
							<% if(p == currentPage){ %>
								<button style="color: orange" disabled><%=p %></button>
							<%}else{ %>
								<button onclick="location.href = '<%= contextPath%>/adminInquiryForm.iq?cpage=<%=p%>';" class="page-link"><%=p %></button>
							<%} %>
						<%} %>
						
						<%if(currentPage != maxPage) {%>
							<button onclick="location.href='<%=contextPath%>/adminInquiryForm.iq?cpage=<%= currentPage +1 %>';" class="page-link"> &gt; </button>
						<%} %>
					</div>
				</nav>
			</div>
		</div>

        <script>
            $(function(){
                $("tbody>tr").click(function(){
                    const num = $(this).children().eq(0).text();

                    console.log(num);

                    location.href = "<%= contextPath %>/detail.iq?num=" + num;
                })
            })
        </script>
		
	</div>
</body>
</html>