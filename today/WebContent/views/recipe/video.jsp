<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <title>Document</title>
    <style>
      .videos img {
        width:100%;
        height:auto;
      }
      a.video {
        float: left;
        position: relative;
      }
      a.video span:hover {
        width: 100%;
        height: 100%;
        position: absolute;
        background: url("../../resources/image/userInfo/video.png") no-repeat;
        background-position: 50% 50%;
        background-size: 300%;
      }
      @media screen and (max-width: 480px) {
        a.video span {
          background-size: 400%;
        }
      }
    </style>
</head>
<body>
    <%@ include file="../common/menubar.jsp" %>

    <div class="videos">
        <a href="https://www.youtube.com/watch?v=F5FEj9U-CJM" class="video">
            <span></span>
            <img src="https://i1.ytimg.com/vi/F5FEj9U-CJM/maxresdefault.jpg" alt="True Facts About The Mantis Shrimp" />
        </a>
    </div>
</body>
</html>