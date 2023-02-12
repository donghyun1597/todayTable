<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <% String contextPath = request.getContextPath(); %> <!-- contextPath = localhost:8002/today -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Simple Sidebar  Start Bootstrap Template</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="<%= contextPath %>/resources/css/styles.css" rel="stylesheet" />
    <style>
        .list-group-flush span {
            font-weight: 900;
            margin-left: 30px;
        }
    </style>
</head>

<body>
    <div class="d-flex" id="wrapper">
        <!-- Sidebar-->
        <div class="border-end bg-white" id="sidebar-wrapper">
            <div class="sidebar-heading bg-light" style="width: 180px; margin: auto; padding: 0px;">
                <a href="xxx"><img src="<%= contextPath %>/resources/image/logo.jpg" alt="" style="box-sizing: border-box; width: 100%; height: 100%;"></a>
            </div>
            <div class="list-group list-group-flush" >
                    <a class=" list-group-item list-group-item-action list-group-item-light p-3" href="#!"
                style="border-top: 1px solid #dee2e6;"><span>메인사진변경</span></a>
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!"><span>회원관리</span></a>
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!"><span>공지사항관리</span></a>
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!"><span>문의/신고관리</span></a>
            </div>
        </div>
        <!-- Page content wrapper-->
        <div id="page-content-wrapper">
            <!-- Top navigation-->
            <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
                <div style="text-align: right; margin-right: 15px;">
                    <button type="button" class="btn btn-primary position-relative" style="margin-right: 15px; width: 50px;">
                        <img src="<%= contextPath %>/resources/image/4781824_alarm_alert_attention_bell_clock_icon.png" alt="" style="width: 100%; height: 100%;">
                        <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                          &nbsp;
                          <span class="visually-hidden">unread messages</span>
                        </span>
                      </button>
                    <span><button type="button" class="btn btn-primary position-relative" style="margin-right: 15px;">
                        <a href="" style="color:white; text-decoration: none;"><b>로그아웃</b></a>
                      </button></span>
                </div>
            </nav>

        </div>
    </div>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="<%= contextPath %>/resources/js/scripts.js"></script>
</body>
</html>