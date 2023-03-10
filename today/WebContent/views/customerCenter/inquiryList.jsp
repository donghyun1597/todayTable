<%@page import="com.todayTable.common.model.vo.PageInfo"%>
<%@page import="com.todayTable.customerCenter.model.vo.Inquiry"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Inquiry> list = (ArrayList<Inquiry>)request.getAttribute("list");
	Inquiry deleteNo = (Inquiry)request.getAttribute("deleteNo");
	
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
        .btn-group button {
            border-color: lightgray;
        }
        .pri {
        	color: gray;
        }
    </style>

    <script>
        $(document).ready(function() {
        $(".searchSelect").attr("style","display:inline");
        $(".nice-select").remove("div")
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
						<h2>1:1??????</h2>
                        <br>
                        <h6 style="color: white;">- ??????????????? ????????? ?????? ???????????? ???????????? ??? ?????? '1:1??????' ??????????????????.</h6>
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
                    <th style="width: 10%;">?????????</th>
                    <th style="width: 50%;">??????</th>
                    <th style="width: 15%;">????????????</th>
                    <th style="width: 10%;">?????????</th>
                    <th style="width: 15%;">?????????</th>
                </tr>
            </thead>
            <tbody id="listbody">
                <!-- case1. ????????? ?????? -->
            	<%if(list.isEmpty()) { %>
           		<tr>
                    <td colspan="5">???????????? ???????????? ????????????.</td>
                </tr>
                <% }else { %>
                <!-- case2. ????????? ?????? -->
                
                <% for(Inquiry i :list) { %>
                <tr>
                    <td><%= i.getInqNo() %></td>
                   	<td style="text-align: left;">
                	<%if(loginUser!= null){ %>
                    <%if(loginUser.getMemId().equals(i.getMemId())) {%>
                       	<div style="font-weight: bold;" class="pub">[MY]<%= i.getInqName() %></div>
                       	<div style="display: none;">
                            <br>
                            [????????????]
                            <br><br>
                            <%= i.getInqQuestion() %>
                            <br><br>
                            [??????]
                            <br><br>
                            <% if(i.getInqAnswer() != null){ %>
                            	<%= i.getInqAnswer() %>
                            <% }else { %>
                            	<p style="color: gray;">???????????? ??? ?????????.</p>
                            <% }%>
                            <br><br><br>
                            <div align="right" id="updateDelete">
                            <a href="<%= contextPath %>/updateInquiryForm.cu?num=<%= i.getInqNo() %>" style="color: coral;">??????</a>
                             | 
                            <a style="color:coral;" data-toggle="modal" href="#deleteModal" class="deleteInquiry">
                            <input type="hidden" value="<%= i.getInqNo() %>">
                            ??????
                            </a>
                            </div>
                        </div>
                    </td>
                    <td><%= (i.getInqProcessing().equals("Y")) ? "????????????" : "????????????" %></td>
                    <td><%= i.getMemId() %></td>
                    <td><%= i.getInqDate() %></td>
                </tr>
                    <%}else { %>
                   	<%if(i.getInqPrivate().equals("Y")) {%>
                    	<div class="pri">??????????????????.</div>
                    <%}else { %>
                    	<div class="pub"><%= i.getInqName() %></div>
                    <%} %>
                        <div style="display: none;">
                            <br>
                            [????????????]
                            <br><br>
                            <%= i.getInqQuestion() %>
                            <br><br>
                            [??????]
                            <br><br>
                            <% if(i.getInqAnswer() != null){ %>
                            	<%= i.getInqAnswer() %>
                            <% }else { %>
                            	<p style="color:gray;">???????????? ??? ?????????.</p>
                            <% }%>
                            <br><br>
                        </div>
                    </td>
                    <td><%= (i.getInqProcessing().equals("Y")) ? "????????????" : "????????????" %></td>
                    <td><%= i.getMemId() %></td>
                    <td><%= i.getInqDate() %></td>
                </tr>
                <% } %>
                <% } else{ %>
                	<%if(i.getInqPrivate().equals("Y")) {%>
                    	<div class="pri">??????????????????.</div>
                    <%}else { %>
                    	<div class="pub"><%= i.getInqName() %></div>
                    <%} %>
                        <div style="display: none;">
                            <br>
                            [????????????]
                            <br><br>
                            <%= i.getInqQuestion() %>
                            <br><br>
                            [??????]
                            <br><br>
                            <% if(i.getInqAnswer() != null){ %>
                            	<%= i.getInqAnswer() %>
                            <% }else { %>
                            	<p style="color:gray;">???????????? ??? ?????????.</p>
                            <% }%>
                            <br><br>
                        </div>
                    </td>
                    <td><%= (i.getInqProcessing().equals("Y")) ? "????????????" : "????????????" %></td>
                    <td><%= i.getMemId() %></td>
                    <td><%= i.getInqDate() %></td>
                </tr>
                <% } %>
                <% } %>
                <% } %>
            </tbody>
        </table>
        <button type="button" class="btn btn-secondary" onclick="writeInquiry();" style="margin-left: 90%;">?????????</button>
    </div>
    
	<!-- ?????? ?????? Modal -->
	<div class="modal" id="deleteModal">
        <div class="modal-dialog">
          <div class="modal-content">
      
            <!-- Modal Header -->
            <div class="modal-header">
              <h4 class="modal-title">?????? ??????</h4>
              <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
      
            <!-- Modal body -->
            <div class="modal-body" id="deleteBody" align="center">
              	<form action="" method="post" id="deleteInquiryForm">
              		<input type="hidden" id="deleteNumber" name="deleteNum">
	                <b>?????? ??? ????????? ????????? ?????????. <br> ????????? ?????????????????????????</b><br><br>
	                <button class="btn btn-sm btn-secondary" data-dismiss="modal">??????</button>
					<button type="submit" class="btn btn-sm btn-danger" id="deleteBtn">??????</button>
            	</form>
            </div>
      
          </div>
        </div>
      </div>
    

    
    <script>
    	function writeInquiry(){
    		<% if(session.getAttribute("loginUser") != null) { %>
    			location.href = "<%= contextPath %>/writeInquiryForm.cu";
    		<% }else {%>
    			alert("????????? ??? ?????? ???????????????.");
    			location.href = "<%= contextPath %>/loginForm.me";
    		<% } %>
    	}
        $(function(){
            $(".pub").click(function(){
                const $div = $(this).next();
                const $ptd = $(this).parent();
                const $ptr = $ptd.parent();
                
                if($div.css("display") == "none"){
                    $(".pub").next().slideUp();
                    $div.slideDown();
                }else {
                    $div.slideUp();
                }
            })
            $(".deleteInquiry").click(function(){
            	var num = $(this).children().val();
            	$("#deleteNumber").val(num);
                $("#deleteInquiryForm").attr("action", "<%= contextPath %>/deleteInquiry.cu?num="+num);
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
                	    <button onclick="location.href='<%= contextPath%>/inquiry.cu?cpage=<%=p%>';" class="page-link"><%=p %></button>
		        	<%} %>
		        <%} %>
		        
		        <%if(currentPage != maxPage) {%>
		        	<button onclick="location.href='<%=contextPath%>/inquiry.cu?cpage=<%= currentPage +1 %>';" class="page-link"> &gt; </button>
		        <%} %>
            </div>
        </nav>
    </div>
    
    <div class="col-5" style="margin:auto">
        <form action="searchInquiry.cu?cpage=1" method="post">
        <div class="btn-group">
            <select name="searchOption" class="btn btn-outline-secondary searchSelect" style="border-color: darkgray;">
                <option value="title">??????&nbsp;&nbsp;&nbsp;</option>
                <option value="content">??????&nbsp;&nbsp;&nbsp;</option>
                <option value="titleContent">??????+??????&nbsp;&nbsp;</option>
            </select>
            <input type="text" name="searchText" class="form-control" placeholder="????????? ??????" style="border-color: rgb(108, 117, 125); border-radius: 0%;">
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