<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Member Signup</title>
    <style>
      /* CSS styles */
      body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f2f2f2;
      }
      h1 {
        text-align: center;
        margin-top: 50px;
      }
      form {
        width: 500px;
        margin: 0 auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 5px #ccc;
      }
      label {
        display: block;
        margin-top: 10px;
        font-size: 16px;
      }
      input[type="text"], input[type="nickname"], input[type="userId"], input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border-radius: 5px;
        border: 1px solid #ccc;
        font-size: 16px;
      }
      button[type="submit"] {
        background-color: #4CAF50;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
      }
      button[type="submit"]:hover {
        background-color: #3e8e41;
      }
    </style>
  </head>
  <body>
    <div align="center">
        <img src="../resources/image/core-img/logo.jpg" alt="오늘의식탁 로고" width="40%">
    </div>
    <h1>회원가입 페이지</h1>
    
    <form class="joininput">
        <label for="userId">아이디 :</label>
        <input type="userId" id="userId" name="userId" required>        
        
        <label for="password">비밀번호 :</label>
        <input type="password" id="password" name="password" required>

        <label for="password">비밀번호 확인 :</label>
        <input type="password" id="password" name="password" required>

        <label for="name">이름 :</label>
        <input type="text" id="name" name="name" required>
        
        <label for="nickname">닉네임 :</label>
        <input type="nickname" id="nickname" name="nickname" required>
        
        <label for="phone">휴대전화 :</label>
        <input type="phone" id="phone" name="phone" required> 
        
        <button type="submit">회원가입</button>
        <button type="reset">취소</button>
    </form>
    
  </body>
</html>
