<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<style>
    .wrap {
        width: 1200px;
        height: 1000px;
        margin: auto;
    }

    .nav-area { background-color: white; }

    .tab { display: table-cell; width: 80px; height: 30px; }

    .tab a {
        text-decoration: none;
        color: #555;
        font-size: 14px;
        font-weight: bold;
        display: block;
        width: 100%;
        height: 90%;
        line-height: 30px;
        border: 1px solid gray;
    }

    .tab a:hover { /* 기능 테스트 중 => 성공 */
        /* 눌렸을때, 이걸로 적용하려고 함 */
        border-bottom: 1px solid #fff;
        border-bottom-width: 1px;
        border-bottom-style: solid;
        border-bottom-color: rgb(255, 255, 255);
    }

    .btn-primary {
        color: #fff;
        background-color: #46ae4f;
        border: 1px solid #497725;
        height: 30px;
        /* 추후에 버튼 스타일 입히기 */
    }

    .tab { text-align: center; }


</style>
</head>
<body>
    
    <div class="wrap">
    
        <!-- tab 영역-->
        <br clear="both"><br>
        <div class="nav-area" align="left">
            <div class="tab"><a href="#">My레시피</a></div>
            <div class="tab"><a href="#">My후기</a></div>
            <div class="tab"><a href="#">My댓글</a></div>
            <div class="tab"><a href="#">찜목록</a></div>
            <div class="tab"><a href="#">내정보</a></div>
        </div>
        <!-- tab 영역 끝 -->
    </div>
</body>
</html>