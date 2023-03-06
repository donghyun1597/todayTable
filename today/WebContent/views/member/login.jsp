<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String alertMsg = (String)session.getAttribute("alertMsg");

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="google-signin-client_id" content="711884520767-q69vptmfdph64rmgbqgs2qusna0jivj6.apps.googleusercontent.com">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <title>Document</title>
    <style>
        * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Noto Sans KR", sans-serif;
        }

        a {
        text-decoration: none;
        color: black;
        }

        li {
        list-style: none;
        }

        .wrap {
        width: 100%;
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        background: rgba(0, 0, 0, 0.1);
        }

        .login {
        width: 500px;
        height: 800px;
        background: white;
        border-radius: 20px;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        }

        h2 {
        color: tomato;
        font-size: 2em;
        }

        .login_sns {
        padding: 20px;
        display: flex;
        }

        .login_sns li {
        padding: 0px 15px;
        }

        .login_sns a {
        width: 50px;
        height: 50px;
        display: flex;
        align-items: center;
        justify-content: center;
        padding: 10px;
        border-radius: 50px;
        background: white;
        font-size: 20px;
        box-shadow: 3px 3px 3px rgba(0, 0, 0, 0.4), -3px -3px 5px rgba(0, 0, 0, 0.1);
        }

        .login_id {
        margin-top: 20px;
        width: 100%;
        }

        .login_id input {
        width: 100%;
        height: 50px;
        border-radius: 30px;
        margin-top: 10px;
        padding: 0px 20px;
        border: 1px solid lightgray;
        outline: none;
        }

        .login_pw {
        margin-top: 20px;
        width: 100%;
        }

        .login_pw input {
        width: 100%;
        height: 50px;
        border-radius: 30px;
        margin-top: 10px;
        padding: 0px 20px;
        border: 1px solid lightgray;
        outline: none;
        }

        .login_etc {
        padding: 10px;
        width: 80%;
        font-size: 14px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        font-weight: bold;
        }

        .submit {
        margin-top: 50px;
        width: 80%;
        }
        
        .submit input {
        width: 100%;
        height: 50px;
        border: 0;
        outline: none;
        border-radius: 40px;
        background: linear-gradient(to left, rgb(255, 77, 46), rgb(255, 155, 47));
        color: white;
        font-size: 1.2em;
        letter-spacing: 2px;
        }
    </style>
</head>
<body>
	<%if(alertMsg!=null){ %>
	<script>
		alert("<%=alertMsg%>");
	</script>
	<%session.removeAttribute("alertMsg"); %>
	<%} %>
    <div class="wrap">
        <div class="login">
            <img src="<%=request.getContextPath()%>/resources/image/logo.png" alt="" width="200" onclick="location.href='<%=request.getContextPath()%>'">
            <h2>Log-in</h2>
            <div class="login_sns">
                <li><a href=""><img src="<%=request.getContextPath()%>/resources/image/userInfo/2023-03-05 221015.png" alt=""></a></li>
                <li id="GgCustomLogin"><a href="javascript:void(0)"><img src="<%=request.getContextPath()%>/resources/image/userInfo/2023-03-06 104727.png" alt="" clsas="a"></a></li>
                <li><a href=""></a></li>
            </div>
            <button type="button" onclick="kakaoLogin();">카카오 로그인</button>
            <button type="button" onclick="kakaoLogout();">카카오 로그아웃</button>



            <form action="<%=request.getContextPath() %>/login.me" method="post">
                <div class="login_id">
                    <h4>LOGIN</h4>
                    <input type="text" name="memId" placeholder="아이디">
                </div>
                <div class="login_pw">
                    <h4>비밀번호</h4>
                    <input type="password" name="memPwd" placeholder="비밀번호">
                </div>
                <div class="submit">
                    <input type="submit" value="로그인">
                    <input type="reset" value="취소">
                </div>    
            </form>
            <div class="login_etc">
                <div class="forgot_id">
                    <a href="#">아이디 찾기</a>
                </div>
                <div class="forgot_pw">
                    <a href="#">비밀번호 찾기</a>
                </div>
                <div class="join">
                    <a href="#">회원가입</a>
                </div>
            </div>

        </div>
    </div>

    
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script> 
	<script>
	
	Kakao.init('bee10b69e93126c2540d83cfa3372864'); //발급받은 키 중 javascript키를 사용해준다.
	console.log(Kakao.isInitialized()); // sdk초기화여부판단
	//카카오로그인
	function kakaoLogin() {
		
	    Kakao.Auth.login({
	      success: function (response) {
	        Kakao.API.request({
	          url: '/v2/user/me',
	          success: function (response) {
	        	  console.log(response)
	        	  let kakao_account = response.kakao_account;
                  console.log(kakao_account.profile.nickname);
                  $.ajax({
                    url : 'kakaologin.me',
                    data : {kakao:kakao_account.profile.nickname},
                    success : function(){
                        // location.href = "<%=request.getContextPath()%>"
                    }


                  })
	        	  
	          },
	          fail: function (error) {
	            console.log(error)
	          },
	        })
	      },
	      fail: function (error) {
	        console.log(error)
	      },
	    })
	  }
	  function kakaoLogout() {
		  //  초기화
		 Kakao.isInitialized();
		 
         if (!Kakao.Auth.getAccessToken()) {
             console.log('Not logged in.');
             return;
         }
         Kakao.Auth.logout(function(response) {
             alert(response +' logout');
             
             
             //window.location.href='/'
         });
     };
	</script>




   <script>
   
   //처음 실행하는 함수
   function init() {
       gapi.load('auth2', function() {
           gapi.auth2.init();
           options = new gapi.auth2.SigninOptionsBuilder();
           options.setPrompt('select_account');
           // 추가는 Oauth 승인 권한 추가 후 띄어쓰기 기준으로 추가
           options.setScope('email profile openid https://www.googleapis.com/auth/user.birthday.read');
           // 인스턴스의 함수 호출 - element에 로그인 기능 추가
           // GgCustomLogin은 li태그안에 있는 ID, 위에 설정한 options와 아래 성공,실패시 실행하는 함수들
           gapi.auth2.getAuthInstance().attachClickHandler('GgCustomLogin', options, onSignIn, onSignInFailure);
       })
   }
   
   function onSignIn(googleUser) {
       var access_token = googleUser.getAuthResponse().access_token
       $.ajax({
           // people api를 이용하여 프로필 및 생년월일에 대한 선택동의후 가져온다.
           url: 'https://people.googleapis.com/v1/people/me'
           // key에 자신의 API 키를 넣습니다.
           , data: {personFields:'birthdays', key:'AIzaSyBeKmaZkxVeUsRgQgVcwz_LE9_uRuNTFC0', 'access_token': access_token}
           , method:'GET'
       })
       .done(function(e){
           //프로필을 가져온다.
           var profile = googleUser.getBasicProfile();
           console.log(profile)
       })
       .fail(function(e){
           console.log(e);
       })
   }
   function onSignInFailure(t){		
       console.log(t);
   }
   </script>
   <!-- //구글 api 사용을 위한 스크립트 -->
   <script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>



</body>
</html>