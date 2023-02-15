<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
	String contextPath = request.getContextPath();
%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>오늘의 식탁 관리자</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    </head>

    <body>
        <div class="wrapper" align="center" style="margin-top: 100px;">
            <div class="img-wrap">
                <img src="resources/image/logo.png" width="200px" height="200px">
            </div>
            <div class="form-wrap">
                <h2 style="font-weight: bold;">관리자 로그인</h2>
                <br><br>
                <form action="<%= contextPath %>/adminlogin.do" method="post">
                    <table>
                        <tr>
                            <th>관리자 비밀번호 &nbsp;</th>
                            <td><input type="password" name="adminPwd" style="margin-right: 10px;"></td>
                            <td><button type="submit" class="btn btn-success">로그인</button></td>
                        </tr>
                    </table>

                </form>
            </div>
        </div>
    </body>

    </html>