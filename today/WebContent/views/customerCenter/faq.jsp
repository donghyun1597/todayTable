<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>자주 묻는 질문</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <style>
        @import url(https://fonts.googleapis.com/css?family=Roboto:400,700,500);
        body {
            font-family: "Roboto", sans-serif;
        }
        #wrap {
            height: 1000px;
            margin:auto;
        }
        .accordion {
            width: 800px;
        }
        #title {
            text-align: center;
        }
        #accordionExample {
            margin: auto;
        }
        hr {
            width: 800px;
            margin: auto;
        }
        h6 {
            color: gray;
            text-align: center;
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
    </style>
</head>
<body>

<%@ include file = "../menubar.jsp" %>

<div id="wrap">
    <br><br>
    <h1 id="title"><b>자주 묻는 질문</b></h1>
    <br>
    <h6>- 회원님들이 자주 궁금해하시는 내용을 모아놓은 '자주 묻는 질문' 페이지입니다.</h6><br>
    <hr>
    <br><br><br>

    <div class="accordion" id="accordionExample">
        <div class="accordion-item">
          <h2 class="accordion-header" id="headingOne">
            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                Q. 레시피 등록 방법을 알고싶어요.
            </button>
          </h2>
          <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" >
            <div class="accordion-body">
                회원가입 및 로그인 후 [레시피 등록] 에서 레시피 등록이 가능합니다.
            </div>
          </div>
        </div>
        <div class="accordion-item">
          <h2 class="accordion-header" id="headingTwo">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                Q. 레시피 삭제 방법을 알고싶어요.
            </button>
          </h2>
          <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" >
            <div class="accordion-body">
                [마이페이지 - MY레시피] 에서 레시피 삭제가 가능합니다.
            </div>
          </div>
        </div>
        <div class="accordion-item">
          <h2 class="accordion-header" id="headingThree">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                Q. 레시피 수정 방법을 알고싶어요.
            </button>
          </h2>
          <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" >
            <div class="accordion-body">
                [마이페이지 - MY레시피] 에서 레시피 수정이 가능합니다.
            </div>
          </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingFour">
              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                Q. 회원 정보를 수정하고 싶어요.
              </button>
            </h2>
            <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" >
              <div class="accordion-body">
                  [마이페이지 - 회원정보수정] 에서 회원정보 수정이 가능합니다.
              </div>
            </div>
          </div>
          <div class="accordion-item">
            <h2 class="accordion-header" id="headingFive">
              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                Q. 회원 탈퇴를 하고싶어요.
              </button>
            </h2>
            <div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive" >
              <div class="accordion-body">
                [마이페이지 - 회원정보수정 - 회원탈퇴] 에서 회원탈퇴가 가능합니다.
              </div>
            </div>
          </div>
      </div>

</div>
    
</body>
</html>