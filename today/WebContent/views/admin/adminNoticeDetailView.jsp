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
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"> -->
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

    .notice-wrap{
        margin-top: 50px;
    }


</style>
</head>
<body>
    <div class="d-flex" id="wrapper">
		<%@ include file="adminMenubar.jsp" %>
		<div id="page-content-wrapper">
            <div>
                <!-- Page content-->
			<div class="container-fluid" style="width: 100%; height: 100%;">
				
				<div class="notice-wrap" align="center">
                    <table class="notice-area table-active" width="800px">
                        <tr>
                            <th width="600px" height="50px" style="text-align: center; font-size: 20px;" colspan="3">
                                <% if(n.getNoticeClsfc().equals("일반")) { %>
                                    <%= n.getNoticeName() %>
                                   <% } else if(n.getNoticeClsfc().equals("긴급")) { %>
                                       <p style="color:red; display:inline; font-size:18px; font-weight:900"><%= "[" + n.getNoticeClsfc() + "]   " %></p> <%= "  " + n.getNoticeName() %>
                                   <% } %>
                               </th>
                        </tr>
                        <tr>
                            <td width="100px" colspan="3" style="text-align: right;"><%= n.getNoticeDate() %></td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <pre><%= n.getNoticeContents() %></pre>
                            </td>
                        </tr>
                    </table>
                    <br><br>
                    <a href="<%=contextPath%>/updateForm.no?num=<%=n.getNoticeNo()%>" class="btn btn-sm btn-warning">수정하기</a>
                    <a href="<%=contextPath%>/adminNotice.no" class="btn btn-sm btn-primary">목록으로</a>
                    <a href="<%=contextPath%>/adminDelete.no?num=<%=n.getNoticeNo()%>" class="btn btn-sm btn-danger" onclick="return confirm('삭제하시겠습니까?')">삭제하기</a>
                    
                </div>
            

			</div>

            </div>
		</div>
	</div>
	  
	
    
</body>
</html>