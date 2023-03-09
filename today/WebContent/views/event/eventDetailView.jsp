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
    .outer{
        width: 1000px;
        height: 600px;
        margin: auto;
        margin-top: 50px;
        }
    .reply-area{
    	width:100%
    	height: auto;
    }
</style>
</style>
</head>
<body>
 <%@ include file="../common/menubar.jsp" %>
    <div class="outer">
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

            <div id="reply-area">
                <table border="1" align="center">
                    <thead style="width:800px">
                        <tr>
                            <th>댓글</th>
                            
                            <% if(loginUser != null){ // 로그인이 되어 있는 경우 %>
                            <td>
                                <textarea id="replyContent" rows="3" cols="50" style="resize:none; width:720px"></textarea>
                            </td>
                            <td><button class="btn-sm btn-primary"onclick="insertReply();">등록</button></td>
                            <%}else{ %>
                            <td>
                                <textarea rows="3" cols="50" style="resize:none; width:720px" readonly>로그인 후 이용가능한 서비스 입니다.</textarea>
                            </td>
                            <td><button class="btn-sm btn-primary" disabled>등록</button></td>
                            <%} %>
                        </tr>
                    </thead>
                    
                    <tbody>
                    </tbody>
                </table>
                
                <script>
                    
                    $(function(){
                        selectReplyList();
                        
                        setInterval(selectReplyList, 1000);
                    })
                    
                    // ajax로 댓글 작성용
                    function insertReply(){
                        
                        $.ajax({
                            url:"rInsert.ev",
                            data:{
                                content:$("#replyContent").val(),
                                bno:<%= ev.getEventNo() %> // userNo : 로그인 안한 경우, loginUser null인 경우에는 널포인트 날 수도 있음
                            },
                            type:"post",
                            success:function(result){
                                if(result>0){
                                    selectReplyList();
                                    $("#replyContent").val("");
                                }
                            },
                            error:function(){
                                console.log("댓글작성용 ajax 통신 실패!");
                            }
                        })
                    }
                    
                    // ajax로 해당 게시글에 딸린 댓글 목록 조회용
                    function selectReplyList(){
                        $.ajax({
                            url:"rlist.ev",
                            data:{bno:<%= ev.getEventNo() %>},
                            success:function(list){
                                let value = "";
                                for(let i=0 ; i<list.length ; i++) {
                                    value += "<tr>"
                                                + "<td>" + list[i].replyWriter + "</td>"
                                                + "<td>" + list[i].replyContent  + "</td>"
                                                + "<td>" + list[i].createDate + "</td>"
                                                + "</tr>"
                                }
                                $("#reply-area tbody").html(value);
                            },
                            error:function(){
                                console.log("ajax 통신 실패!");
                            }
                        })
                    }
                
                </script>
            
            </div>

            <br><br>
            <a href="<%=contextPath%>/eventList.ev?cpage=1" class="btn btn-sm btn-primary">목록으로</a>
        </div>
    </div>
</div>
</body>
</html>