<%@page import="com.todayTable.customerCenter.model.vo.Inquiry"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Inquiry iq = (Inquiry)request.getAttribute("iq");
%>  
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	@import url(https://fonts.googleapis.com/css?family=Roboto:400,700,500);
	table{
		background-color:#e9ecef;
	}

	pre{
		font-family: "Roboto", sans-serif;
	}
	
</style>
</head>
<body>
	<div class="d-flex" id="wrapper">
		<%@ include file="adminMenubar.jsp" %>
		<div id="page-content-wrapper" align="center" style="margin-top:50px;">
			<table width="900px" height="auto">
				<tr>
					<th colspan="2" style="text-align:center;"><%= iq.getInqName() %></th>
				</tr>

				<tr>
					<td width="50%">작성자: <%= iq.getMemId() %></td>
					<td width="50%" style="text-align: right;">작성일: <%= iq.getInqDate() %></td>
				</tr>

				<tr>
					<th colspan="2">문의내용</th>
				</tr>
				<tr>
					<td><%= iq.getInqQuestion() %></td>
				</tr>
				
				<tr>
					<td colspan=2><hr style="width:100%;"></td>
				</tr>
				
				<% if(iq.getInqProcessing().equals("Y")) { %>
				<tr>
					<th>답변내용</th>
				</tr>
				<tr>
					<td><pre><%= iq.getInqAnswer() %></pre></td>
				</tr>
				<% } else { %>
				<form action="<%=contextPath%>/insertAnswer.iq">
					<tr>
						<input type="hidden" name="iqNo" value="<%=iq.getInqNo() %>">
						<td colspan="2"><textarea rows="10" style="resize:none; width:100%;" placeholder="답변 내용 작성" name="answer"></textarea></td>
					</tr>

					<tr>
						<td colspan="2" align="right"><input type="submit" value="답변작성" class="btn btn-sm btn-primary"></td>
					</tr>
				</form>
				<% } %>
			</table>
			<div class="btn-wrapper" style="margin-top:50px">
			<%if(iq.getInqProcessing().equals("Y")) { %>
				<a href="<%= contextPath %>/adminUpdate.iq" class="btn btn-sm btn-secondary">답변수정</a>
			<% } %>
				<a href="<%= contextPath %>/adminInquiryForm.iq" class="btn btn-sm btn-primary">목록으로</a>
				<a href="<%= contextPath %>/adminDelete.iq" class="btn btn-sm btn-danger" onclick="return confirm('문의사항을 삭제하시겠습니까?');">삭제하기</a>
			</div>
		</div>
	</div>
</body>
</html>