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
<!-- <link rel="stylesheet" href="resources/css/style.css"> -->
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

    .notice-wrap{
        margin-top: 50px;
    }

    #eventHead {
		color: white;
        text-align: center;

	}

</style>
</head>
<body>
	 <div class="d-flex" id="wrapper">
		<%@ include file="adminMenubar.jsp" %>
		<div id="page-content-wrapper">
            <div>
                <!-- Page content-->
			<div class="container-fluid" style="width: 100%; height: 100%; padding: 0px;">
                <br><br>
                <div id="eventHead" style="background-color: rgb(240, 225, 210);">
					<br>
					<h1 class="foot"><b>이벤트</b></h1>
					<br>
					<h6 style="color: white; font-weight: bold;">- 오늘의식탁의 이벤트 관련 글을 공지하는 '이벤트' 페이지입니다.</h6>
					<br>
				</div>
				
				<div class="notice-wrap" align="center">
                    <table class="notice-area table-active" width="800px" style="background-color: #e9ecef;">
                        <tr style="background-color: white;">
                            <% if(ev.getEventProcessing().equals("Y")) { %>
                            <td colspan="4" align="right" height="50"><button class="btn btn-sm btn-danger" onclick="closeEv();">이벤트 종료</button></td>
                            <% } %>
                        </tr>
                        
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
                    <a href="<%=contextPath%>/updateForm.ev?num=<%=ev.getEventNo()%>" class="btn btn-sm btn-warning">수정하기</a>
                    <a href="<%=contextPath%>/adminEvent.ev?cpage=1" class="btn btn-sm btn-primary">목록으로</a>
                    <a href="<%=contextPath%>/adminDelete.ev?num=<%=ev.getEventNo()%>" class="btn btn-sm btn-danger" onclick="return confirm('삭제하시겠습니까?')">삭제하기</a>
                    
                </div>
                <script>
                    function closeEv(){
                        
                        if(confirm("이벤트를 종료하시겠습니까?")){
                            location.href = "<%=contextPath%>/close.ev?eno=<%= ev.getEventNo() %>";
                            return true;
                        } else{
                            return false;
                        }
                    }
                </script>

			</div>

            </div>
		</div>
	</div>
	  
	
    
</body>
</html>