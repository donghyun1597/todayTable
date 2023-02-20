<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <style>
        @import url(https://fonts.googleapis.com/css?family=Roboto:400,700,500);
        body {
            font-family: "Roboto", sans-serif;
        }
        #wrap {
            width: 500px;
            margin:auto;
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
    </style>
</head>
<body>

<%@ include file = "../common/menubar.jsp" %>
    
    <div id="wrap">
        <br><br>
        <h1 id="title"><b>문의 작성</b></h1> <br><br>
        <form id="wirteInquiry-form" action="<%= contextPath %>/insertInquiry.cu" method="post">
        <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label"><b>제목</b></label>
            <input type="email" class="form-control" id="exampleFormControlInput1" name="inqName" placeholder="제목을 입력해주세요.">
          </div>
            <div id="privateChecked">
                <div class="form-check form-switch">
                    <input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked">
                    <label class="form-check-label" for="flexSwitchCheckChecked">비밀글 설정</label>
                </div>
            </div>
            <br><br>
          <div class="mb-3">
            <label for="exampleFormControlTextarea1" class="form-label"><b>문의내용</b></label>
            <textarea class="form-control" id="content" rows="3" placeholder="문의하실 내용을 입력해주세요. (500자이내)"></textarea>
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