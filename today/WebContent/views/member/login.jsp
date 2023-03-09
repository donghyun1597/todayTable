<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath(); // /jsp	

	String alertMsg = (String)session.getAttribute("alertMsg");

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="google-signin-client_id" content="711884520767-q69vptmfdph64rmgbqgs2qusna0jivj6.apps.googleusercontent.com">

    <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>

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
        display: flex;
        
        }

        .submit input:hover{
            background: orange;
            cursor: pointer;
        }
        
        .submit input {
        width: 100%;
        height: 40px;
        border: 0;
        outline: none;
        border-radius: 30px;
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
            <a class="nav-brand" href="index.jsp" align="center"><img src="<%=request.getContextPath()%>/resources/image/logo.png" width="40%" align="center"></a>
            <h2>Log-in</h2>
            <div class="login_sns">
                <li><a href=""><img src="<%=request.getContextPath()%>/resources/image/userInfo/2023-03-05 221015.png" alt="" width="30px" onclick="kakaoLogin();"></a></li>
                <li><a id="GgCustomLogin" href="javascript:void(0)"><img src="<%=request.getContextPath()%>/resources/image/userInfo/2023-03-06 104727.png" alt="" width="30px"></a></li>
                <li><a id="naverIdLogin_loginButton" href="javascript:void(0)"><img src="<%=request.getContextPath()%>/resources/image/userInfo/btnW_icon_circle.png" alt="" width="30px"></a></li>
            </div>

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
                    <input type="submit" value="로그인" name="btn">
                    <input type="reset" value="취소" name="btn">
                    
                </div>    
            </form>
            <div class="login_etc">
                <div class="forgot_id">
                    <a href="<%=request.getContextPath()%>/views/member/searchMemId.jsp">아이디 찾기</a>
                </div>
                <div class="forgot_pw">
                    <a href="<%=request.getContextPath()%>/views/member/searchMemPw.jsp">비밀번호 찾기</a>
                </div>
                <div class="join">
                    <button type="button" onclick="enrollPage();">회원가입</button>
                </div>
            </div>

        </div>
    </div>
    
	<script>
	function enrollPage(){
		location.href = "<%= contextPath %>/enrollForm.me";
	}
	</script>     
    

    
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


<!-- 구글 로그인 api -->
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
   <!-- 구글 api 사용을 위한 스크립트 -->
   <script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>




<!-- 네이버 로그인 api -->
   
    <!-- 네이버 api 사용을 위한 스크립트 -->
    <script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
    <script>
    var naverLogin = new naver.LoginWithNaverId(
            {
                clientId: "80mdf88flkWWJT1f93Tz", //내 애플리케이션 정보에 cliendId를 입력해줍니다.
                callbackUrl: "http://localhost:8181/naverLogin", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
                isPopup: false,
                callbackHandle: true
            }
        );	

    naverLogin.init();

    window.addEventListener('load', function () {
        naverLogin.getLoginStatus(function (status) {
            if (status) {
                var email = naverLogin.user.getEmail(); // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.
                
                console.log(naverLogin.user); 
                
                if( email == undefined || email == null) {
                    alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
                    naverLogin.reprompt();
                    return;
                }
            } else {
                console.log("callback 처리에 실패하였습니다.");
            }
        });
    });


    var testPopUp;
    function openPopUp() {
        testPopUp= window.open("https://nid.naver.com/nidlogin.logout", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,width=1,height=1");
    }
    function closePopUp(){
        testPopUp.close();
    }

    function naverLogout() {
        openPopUp();
        setTimeout(function() {
            closePopUp();
            }, 1000);
        
    }
    </script>



</body>
</html>