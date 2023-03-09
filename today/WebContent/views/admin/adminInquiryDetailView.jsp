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
<title>오늘의 식탁 관리자</title>
<link rel="icon" href="resources/image/core-img/favicon.ico">
<style>
	@import url(https://fonts.googleapis.com/css?family=Roboto:400,700,500);
	table{
		background-color:#e9ecef;
	}

	pre{
		font-family: "Roboto", sans-serif;
	}
	#inquiryWrap{
        background-color: rgb(240, 225, 210);
        color: white;
        font-weight: 900;
    }

    #inquiryWrap>h6{
        color: white;
        font-weight: 900;
    }

</style>
</head>
<body>
	<div class="d-flex" id="wrapper">
		<%@ include file="adminMenubar.jsp" %>
		<div id="page-content-wrapper" align="center">
			<br><br>
			<div id="inquiryWrap">
				<br>
				<h1 class="foot"><b>1:1 문의</b></h1>
				<hr>
				<h6>- 회원님들의 궁금한 점을 등록하여 답변받을 수 있는 '1:1문의' 페이지입니다.</h6>
				<br>
			</div>

			<br><br>

			<div>
				<table width="900px" height="auto">
					<tr>
						<th colspan="2" style="text-align:center;" name="iqTitle"><%= iq.getInqName() %></th>
					</tr>

					<tr>
						<td width="50%">작성자: <%= iq.getMemId() %></td>
						<td width="50%" style="text-align: right;">작성일: <%= iq.getInqDate() %></td>
					</tr>

					<tr>
						<th colspan="2">문의내용</th>
					</tr>
					<tr>
						<td colspan="2"><%= iq.getInqQuestion() %></td>
					</tr>
					
					<tr>
						<td colspan=2><hr style="width:100%;"></td>
					</tr>
					
					<% if(iq.getInqProcessing().equals("Y")) { %>
					<tr>
						<th>답변내용</th>
					</tr>
					<tr>
						<td><pre name="iqContent"><%= iq.getInqAnswer() %></pre></td>
					</tr>
					<% } else { %>
					<form action="<%=contextPath%>/insertAnswer.iq">
						<tr>
							<input type="hidden" name="iqNo" value="<%= iq.getInqNo() %>">
							<td colspan="2"><textarea rows="10" style="resize:none; width:100%;" placeholder="답변 내용 작성" name="answer"></textarea></td>
						</tr>

						<tr>
							<td colspan="2" align="right"><input type="submit" value="답변작성" class="btn btn-sm btn-primary"></td>
						</tr>
					</form>
					<% } %>
				</table>
			</div>
			<div class="btn-wrapper" style="margin-top:30px">
			<%if(iq.getInqProcessing().equals("Y")) { %>
				<a href="<%= contextPath %>/adminUpdateForm.iq?num=<%= iq.getInqNo() %>" class="btn btn-sm btn-secondary">답변수정</a>
			<% } %>
				<a href="<%= contextPath %>/adminInquiryForm.iq?cpage=1" class="btn btn-sm btn-primary">목록으로</a>
				<a href="<%= contextPath %>/adminDelete.iq?num=<%= iq.getInqNo() %>" class="btn btn-sm btn-danger" onclick="return confirm('문의사항을 삭제하시겠습니까?');">삭제하기</a>
			</div>
		</div>
	</div>
</body>
</html>