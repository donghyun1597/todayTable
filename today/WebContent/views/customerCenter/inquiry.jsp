<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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

<%@ include file = "../menubar.jsp" %>

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
                    <th style="width: 20%;">답변여부</th>
                    <th style="width: 10%;">작성자</th>
                    <th style="width: 10%;">작성일</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>x</td>
                    <td style="text-align: left;"><a href="#">xxxx</a></td>
                    <td>xx</td>
                    <td>xx</td>
                    <td>xx</td>
                </tr>
                <tr>
                    <td>x</td>
                    <td style="text-align: left;"><a href="#">xxxx</a></td>
                    <td>xx</td>
                    <td>xx</td>
                    <td>xx</td>
                </tr>
                <tr>
                    <td>x</td>
                    <td style="text-align: left; color: gray;">비밀글입니다.</td>
                    <td>xx</td>
                    <td>xx</td>
                    <td>xx</td>
                </tr>
                <tr>
                    <td>x</td>
                    <td style="text-align: left;"><a href="#">xxxx</a></td>
                    <td>xx</td>
                    <td>xx</td>
                    <td>xx</td>
                </tr>
                <tr>
                    <td>x</td>
                    <td style="text-align: left; color: gray;">비밀글입니다.</td>
                    <td>xx</td>
                    <td>xx</td>
                    <td>xx</td>
                </tr>
                <tr>
                    <td>x</td>
                    <td style="text-align: left; color: gray;">비밀글입니다.</td>
                    <td>xx</td>
                    <td>xx</td>
                    <td>xx</td>
                </tr>
                <tr>
                    <td>x</td>
                    <td style="text-align: left; color: gray;">비밀글입니다.</td>
                    <td>xx</td>
                    <td>xx</td>
                    <td>xx</td>
                </tr>
                <tr>
                    <td>x</td>
                    <td style="text-align: left;"><a href="#">xxxx</a></td>
                    <td>xx</td>
                    <td>xx</td>
                    <td>xx</td>
                </tr>
                <tr>
                    <td>x</td>
                    <td style="text-align: left;"><a href="#">xxxx</a></td>
                    <td>xx</td>
                    <td>xx</td>
                    <td>xx</td>
                </tr>
                <tr>
                    <td>x</td>
                    <td style="text-align: left;"><a href="#">xxxx</a></td>
                    <td>xx</td>
                    <td>xx</td>
                    <td>xx</td>
                </tr>
            </tbody>
        </table>
        <button type="button" class="btn btn-secondary" onclick="wirteInquiry();" style="margin-left: 90%;">글쓰기</button>
    </div>
    
    <script>
    	function wirteInquiry(){
    		location.href = "<%= contextPath %>/wirteInquiry.me";
    	}
    </script>
    
    <div class="m-4" id="paging">
        <nav>
            <ul class="pagination">
                <li class="page-item"><a href="#" class="page-link"> < </a></li>
                <li class="page-item"><a href="#" class="page-link">1</a></li>
                <li class="page-item"><a href="#" class="page-link">2</a></li>
                <li class="page-item"><a href="#" class="page-link">3</a></li>
                <li class="page-item"><a href="#" class="page-link">4</a></li>
                <li class="page-item"><a href="#" class="page-link">5</a></li>
                <li class="page-item"><a href="#" class="page-link"> > </a></li>
            </ul>
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

</body>
</html>