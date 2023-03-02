<%@page import="com.todayTable.customerCenter.model.vo.Inquiry"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Inquiry i = (Inquiry)request.getAttribute("i");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    <style>
        @import url(https://fonts.googleapis.com/css?family=Roboto:400,700,500);
        body {
            font-family: "Roboto", sans-serif;
        }
        #wrap {
            width: 700px;
            margin:auto;
        }
        hr {
            width: 700px;
            margin: auto;
        }
        #title {
            text-align: center;
        }
        textarea {
            resize: none;
            height: 300px;
        }
        #btn-group {
            float: right;
        }
        #privateChecked {
            float: right;
        }
        h6 {
            color: gray;
            text-align: center;
            font-size: 14px;
        }
    </style>
</head>
<body>

<%@ include file = "../common/menubar.jsp" %>
    
    <div id="wrap">
        <br>
        <h1 id="title"><b>문의 수정</b></h1>
        <br>
        <h6>- 문의수정을 위한 '문의수정' 페이지입니다.</h6>
        <br>
        <hr>
        <br><br>
        <form id="updateInquiry-form" action="<%= contextPath %>/updateInquiry.cu" method="post">
        <input type="hidden" name="num" value="<%= i.getInqNo() %>">
        <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label"><b>제목</b></label>
            <input type="text" class="form-control" id="exampleFormControlInput1" name="inqName" placeholder="제목을 입력해주세요." value="<%= i.getInqName() %>">
          </div>
            <div id="privateChecked">
                <div class="form-check form-switch">
                    <input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked" name="checkPrivate" value="pri">
                    <label class="form-check-label" for="flexSwitchCheckChecked">비밀글 설정</label>
                </div>
            </div>
            <br><br>
          <div class="mb-3">
            <label for="exampleFormControlTextarea1" class="form-label"><b>문의내용</b></label>
            <textarea class="form-control" name="inqQuestion" id="content" rows="3" placeholder="문의하실 내용을 입력해주세요. (500자이내)"><%= i.getInqQuestion() %></textarea>
            <span id="count">0</span>/500
          </div>

          <script>
            $(function(){
                $("#content").keyup(function(){
                    let length = $(this).val().length;
                    $("#count").text(length);
                })
            })
          </script>


          <div id="btn-group">
          <button type="button" class="btn btn-secondary" onclick="history.back();">돌아가기</button>
          <button type="submit" class="btn btn-primary" id="submit">작성</button>
          </div>
          
        </form>
    </div>

</body>
</html>