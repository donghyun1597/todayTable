<%@page import="com.todayTable.common.model.vo.PageInfo"%>
<%@page import="com.todayTable.customerCenter.model.vo.Inquiry"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Inquiry> list = (ArrayList<Inquiry>)request.getAttribute("list");

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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    
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
    </style>
</head>
<body>

<%@ include file = "../common/menubar.jsp" %>

<div id="wrap">
    <br><br>
    <div id="notice">
    <h1 class="foot"><b>1:1 문의</b></h1>
    <br>
    <h6>- 회원님들의 궁금한 점을 등록하여 답변받을 수 있는 '1:1문의' 페이지입니다.</h6>
    <br>
    <hr>
    <br><br>
    <div class="m-4" id="noticeList">
        <table class="table table-striped"  style="width: 800px;">
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
                <!-- case1. 공지글 없음 -->
            	<%if(list.isEmpty()) { %>
           		<tr>
                    <td colspan="5">존재하는 문의글이 없습니다.</td>
                </tr>
                <% }else { %>
                <!-- case2. 공지글 있음 -->
                <% for(Inquiry i :list) { %>
                <% if(i.getInqPrivate().equals("N")) { %>
                <tr>
                    <td><%= i.getInqNo() %></td>
                    <td style="text-align: left;">
                        <div class="pub"><%= i.getInqName() %></div>
                        <div style="display: none;">
                            <br>
                            [문의내용]
                            <br><br>
                            <%= i.getInqQuestion() %>
                            <br><br>
                            [답변]
                            <br><br>
                            <%= i.getInqAnswer() %>
                            <br><br>
                        </div>
                    </td>
                    <td><%= (i.getInqProcessing().equals("Y")) ? "처리완료" : "답변대기" %></td>
                    <td><%= i.getMemId() %></td>
                    <td><%= i.getInqDate() %></td>
                </tr>
                <%}else {%>
                <tr>
                    <td><%= i.getInqNo() %></td>
                    <td style="text-align: left; color: gray;">
                        <div class="pri">비밀글입니다.</div>
                        <div style="display: none;" >
                            <br>
                            [문의내용]
                            <br><br>
                            <%= i.getInqQuestion() %>
                            <br><br>
                            [답변]
                            <br><br>
                            <%= i.getInqAnswer() %>
                            <br><br>
                        </div>
                    </td>
                    <td><%= (i.getInqProcessing().equals("Y")) ? "처리완료" : "답변대기" %></td>
                    <td><%= i.getMemId() %></td>
                    <td><%= i.getInqDate() %></td>
                </tr>
                <% } %>
                <% } %>
                <% } %>
				<!-- 
                <tr>
                    <td>x</td>
                    <td style="text-align: left; color: gray;">비밀글입니다.</td>
                    <td>xx</td>
                    <td>xx</td>
                    <td>xx</td>
                </tr>
                 -->
               
            </tbody>
        </table>
        <button type="button" class="btn btn-secondary" onclick="wirteInquiry();" style="margin-left: 90%;">글쓰기</button>
    </div>
    
    <script>
    	function wirteInquiry(){
    		location.href = "<%= contextPath %>/wirteInquiry.cu";
    	}
        $(function(){
            $(".pub").click(function(){

                const $p = $(this).next();
                
                if($p.css("display") == "none"){
                    $(this).siblings("p").slideUp();
                    $p.slideDown();
                }else {
                    $p.slideUp();
                }
            })
        })
    </script>
    
    <div class="m-4" id="paging">
        <nav>
            <div class="pagination">
            	<%if(currentPage != 1) { %>
                <button onclick="location.href='<%=contextPath%>/inquiry.cu?cpage=<%= currentPage -1 %>';" class="page-link"> &lt; </button>
                <% } %>
                
                <%for(int p = startPage; p<=endPage; p++) { %>
                	<% if(p == currentPage){ %>
                		<button style="color: orange" disabled><%=p %></button>
                	<%}else{ %>
                	    <button onclick="location.href = '<%= contextPath%>/inquiry.cu?cpage=<%=p%>';" class="page-link"><%=p %></button>
		        	<%} %>
		        <%} %>
		        
		        <%if(currentPage != maxPage) {%>
		        	<button onclick="location.href='<%=contextPath%>/inquiry.cu?cpage=<%= currentPage +1 %>';" class="page-link"> &gt; </button>
		        <%} %>
            </div>
        </nav>
    </div>

    <div class="col-5" style="margin:auto">
        <div class="btn-group">
            <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown">제목</button>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#">내용</a></li>
                <li><a class="dropdown-item" href="#">제목+내용</a></li>
            </ul>
                <input type="text" class="form-control" placeholder="검색어 입력">
            <button type="button" class="btn btn-secondary">
                <i class="bi-search"></i>
            </button>
        </div>
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