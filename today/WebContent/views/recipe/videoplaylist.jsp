<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Video List Bulletin Board</title>
    <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <style>
      /* CSS styles */
      body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
      }
      h1 {
        text-align: center;
      }
      ul {
        list-style: none;
        margin: 0;
        padding: 0;
      }
      li {
        display: inline-block;
        width: 300px;
        margin: 20px;
        border: 1px solid #ccc;
        box-shadow: 0 0 5px #ccc;
        vertical-align: top;
      }
      li h2 {
        margin: 10px;
        font-size: 20px;
        text-align: center;
      }
      li p {
        margin: 10px;
        font-size: 14px;
      }
      iframe {
        display: block;
        margin: 0 auto;
      }
      .videos img {
        width:100%;
        height:auto;
      }
      a.video {
        float: left;
        position: relative;
      }
      a.video span {
        width: 100%;
        height: 100%;
        position: absolute;
        background: url("../../resources/image/userInfo/video.png") no-repeat;
        background-position: 50% 50%;
        background-size: 40%;
      }
      a.video span:hover{
        opacity: 0.7;
        filter: alpha(opacity=70);
      }
      @media screen and (max-width: 480px) {
        a.video span {
          background-size: 40%;
        }
      }

    </style>
  </head>
  <body>

	<%@ include file="/views/common/menubar.jsp" %>

    <h1>요리영상 모음</h1>
    
    <ul>
      <li>
        <h2>전국 분식</h2>
        <iframe src="https://www.youtube.com/embed/3nzlIlsF9Cs" title="Video Title 1" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        <p>Description of Video 1</p>

      </li>
      <li>
        <h2>스팸 김치찌개</h2>
        <iframe src="https://www.youtube.com/embed/4eweEsiiJhI" title="Video Title 2" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        <p>Description of Video 2</p>
      </li>
      <li>
        <h2>순두부 김치찜</h2>
        <iframe src="https://www.youtube.com/embed/szDYnZbJ44Y" title="Video Title 3" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        <p>Description of Video 3</p>
      </li>
      <li>
        <h2>망원동 삼겹살</h2>
        <iframe src="https://www.youtube.com/embed/2zrfG0wCNXw" title="Video Title 3" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        <p>Description of Video 3</p>
      </li>
      <li>
        <h2>순대국밥</h2>
        <div class="videos">
          <a href="#" class="video">
            <span></span>
            <img src="../../resources/image/bg-img/sumin6.jpg" alt="음식1">
          </a>
        </div>
        <div class="receipe-content">
          <div class="ratings">난이도
              <i class="fa fa-star" aria-hidden="true"></i>
              <i class="fa fa-star" aria-hidden="true"></i>
              <i class="fa fa-star-o" aria-hidden="true"></i>
              <i class="fa fa-star-o" aria-hidden="true"></i>
              <i class="fa fa-star-o" aria-hidden="true"></i>
          </div>
        </div>
      </li>
      <li>
        <h2>김치찌개</h2>
        <div class="videos">
          <a href="#" class="video">
            <span></span>
            <img src="../../resources/image/bg-img/sumin6.jpg" alt="음식1">
          </a>
        </div>
        <div class="receipe-content">
          <div class="ratings">난이도
              <i class="fa fa-star" aria-hidden="true"></i>
              <i class="fa fa-star" aria-hidden="true"></i>
              <i class="fa fa-star-o" aria-hidden="true"></i>
              <i class="fa fa-star-o" aria-hidden="true"></i>
              <i class="fa fa-star-o" aria-hidden="true"></i>
          </div>
        </div>
      </li>
      <li>
        <h2>모듬순대</h2>
        <div class="videos">
          <a href="#" class="video">
            <span></span>
            <img src="../../resources/image/bg-img/sumin6.jpg" alt="음식1">
          </a>
        </div>
        <div class="receipe-content">
          <div class="ratings">난이도
              <i class="fa fa-star" aria-hidden="true"></i>
              <i class="fa fa-star" aria-hidden="true"></i>
              <i class="fa fa-star-o" aria-hidden="true"></i>
              <i class="fa fa-star-o" aria-hidden="true"></i>
              <i class="fa fa-star-o" aria-hidden="true"></i>
          </div>
        </div>
      </li>
            
    </ul>
    
  </body>
</html>
