<%@page import="com.todayTable.category.model.vo.CategoryNation"%>
<%@page import="com.todayTable.category.model.vo.CategoryIngredient"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.todayTable.member.model.vo.WishList"%>
<%@page import="com.todayTable.member.model.vo.Allergy"%>
<%@page import="com.todayTable.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();	// "/today"
	
	Member loginUser = (Member)session.getAttribute("loginUser");
	// 로그인 시도 member.jsp 로딩시: null | 회원정보 담겨있는 Member 객체
	ArrayList<Allergy> memAlg = (ArrayList<Allergy>)session.getAttribute("memAlg");
	ArrayList<WishList> wishList = (ArrayList<WishList>)session.getAttribute("wishList");
	String alertMsg = (String)session.getAttribute("alertMsg");
	String alg = "";
	
	
	if(memAlg!=null){
		for(Allergy a : memAlg){
			alg+=a.getAlgNo();
		}
		
	}
	
	// 서비스 요청 member.jsp 로딩시: null | alert로 띄워줄 문구
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>오늘의 식탁</title>
    <link href="https://webfontworld.github.io/nongshim/Ansungtangmyun.css" rel="stylesheet">
    <link rel="icon" href="<%=application.getContextPath()%>/resources/image/core-img/logo.jpg">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/style.css">
    
    <style>
    
    	body * {
        	font-family: 'Ansungtangmyun';
        }
    
    
        /* 로고 이미지 영역 수정했음 */
        .nav-brand { width: 150px; }

        #sidebar {
		background: #333;
		width: 300px;
		height: 100%;
		top: 0;
		left: -300px;
		position: fixed;
	}
	#sidebar > ul {
		margin:0;
		padding: 0;
		top:50px;
		left:70px;
		position: absolute;
	}
	#sidebar li {
		margin: 0 0 20px;
		list-style: none;
	}
	#sidebar > button {
		background:#333;
		position: absolute;
		top: 150px;
		left: 300px;
		width: 52px;
		height: 52px;
		border: none;
		color: white;
	}
        
    </style>
   	
	   
</head>


<body>
    
	
	<%if(alertMsg!=null){ %>
	<script>
		alert("<%=alertMsg%>");
		
	</script> 
	<% session.removeAttribute("alertMsg");
	} %>
	
	
	<!-- Preloader -->
    <div id="preloader">
        <i class="circle-preloader"></i>
        <img src="" alt="">
    </div>

    <!-- Search Wrapper -->
    <div class="search-wrapper">
        <!-- Close Btn -->
        <div class="close-btn"><i class="fa fa-times" aria-hidden="true"></i></div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <form action="<%=contextPath%>/search.rc" method="get">
                        <input type="search" name="search" placeholder="검색어를 입력해주세요.">
                        <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <header class="header-area">

        <!-- Top Header Area -->
        <div class="top-header-area">
            <div class="container h-100">
                <div class="row h-100 align-items-center justify-content-between">
                    <!-- Breaking News -->
                    <div class="col-12 col-sm-6">
                        <div class="breaking-news">
                            <div id="breakingNewsTicker" class="ticker">
                                <ul>
                                    <li>맛으로 소통하는</li>
                                    <li>행복한 식탁!</li>
                                    <li>오늘의 식탁입니다</li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <!-- Top Social Info -->
                    <div class="col-12 col-sm-6">
                        <div class="top-social-info text-right">
                        
                        <%if(loginUser!= null){ %>	<!-- 로그인에 성공했을때, -->
                            <!-- 레시피 작성하기 -->
                            <a href="<%=contextPath%>/recipeWrite.rc">레시피 작성하러가기</a>
                        	<!-- sm.회원정보 수정페이지로 보내기 -->
                        	<a href="<%=contextPath%>/check.me"><%=loginUser.getMemName()%>님<i class="login" aria-hidden="true"></i></a>
                        	<!-- sm.마이페이지 화면으로 보내기 -->
                        	<a href="<%=contextPath%>/recipe.me">MYRECIPE</a>
                        	<!-- 로그아웃 된 후, 메인페이지로 보내기 -->
                        	<a href="<%=contextPath%>/logout.me">LOGOUT</a>
                        	
                        <%}else { %>
                            <a href="<%=contextPath%>/loginForm.me">LOGIN<i class="login" aria-hidden="true"></i></a>
                            
                         <%} %>
                        </div>
                    </div>
                </div>
            </div>
        </div>











        <!-- Navbar Area -->
        <div class="delicious-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="deliciousNav">

                        <!-- Logo 오늘의식탁 **-->
                        <a class="nav-brand" href="index.jsp"><img src="resources/image/core-img/logo.jpg"></a>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- close btn -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Navbar Area -->
                            <div class="delicious-main-menu">
                                <div class="classy-nav-container breakpoint-off">
                                    <div class="container">
                                        <!-- Menu -->
                                        <nav class="classy-navbar justify-content-between" id="deliciousNav">

                                            <!-- Logo -->
                                            

                                            <!-- Navbar Toggler -->
                                            <div class="classy-navbar-toggler">
                                                <span
                                                    class="navbarToggler"><span></span><span></span><span></span></span>
                                            </div>

                                            <!-- Menu -->
                                            <div class="classy-menu">

                                                <!-- close btn -->
                                                <div class="classycloseIcon">
                                                    <div class="cross-wrap"><span class="top"></span><span
                                                            class="bottom"></span></div>
                                                </div>

                                                <!-- Nav Start -->
                                                <div class="classynav">
                                                    <ul>
                                                        <li class="active"><a href="<%= contextPath%>">HOME</a></li>
                                                        <li><a href="<%=contextPath %>/recipelist.rc">레시피</a>
                                                            <ul class="dropdown">
                                                                <li><a href="#">테마별</a>
                                                                    <ul class="dropdown">
                                                                        <li><a href="#">건강식</a></li>
                                                                        <li><a href="#">캠핑요리</a></li>
                                                                        <li><a href="#">간단자취</a></li>
                                                                        <li><a href="#">편의점꿀조합</a></li>
                                                                        <li><a href="#">반려동물위한</a></li>
                                                                        <li><a href="#">파티요리</a></li>
                                                                        <li><a href="#">기타</a></li>
                                                                    </ul>
                                                                </li>
                                                                <li><a href="#">도구별</a>
                                                                    <ul class="dropdown">
                                                                        <li><a href="#">냄비</a></li>
                                                                        <li><a href="#">프라이팬</a></li>
                                                                        <li><a href="#">전자레인지</a></li>
                                                                        <li><a href="#">오븐</a></li>
                                                                        <li><a href="#">에어프라이어</a></li>
                                                                        <li><a href="#">기타</a></li>
                                                                    </ul>
                                                                </li>
                                                                <li><a href="#">재료별</a>
                                                                    <ul class="dropdown">
                                                                        <li><a href="#">돼지고기</a></li>
                                                                        <li><a href="#">소고기</a></li>
                                                                        <li><a href="#">닭고기</a></li>
                                                                        <li><a href="#">해산물</a></li>
                                                                        <li><a href="#">채소</a></li>
                                                                        <li><a href="#">기타</a></li>
                                                                    </ul>
                                                                </li>
                                                                <li><a href="#">조리방법별</a>
                                                                    <ul class="dropdown">
                                                                        <li><a href="#">구이</a></li>
                                                                        <li><a href="#">찜</a></li>
                                                                        <li><a href="#">볶음</a></li>
                                                                        <li><a href="#">무침</a></li>
                                                                        <li><a href="#">튀김</a></li>
                                                                        <li><a href="#">끓이기</a></li>
                                                                        <li><a href="#">기타</a></li>
                                                                    </ul>
                                                                </li>
                                                                <li><a href="#">종류별</a>
                                                                    <ul class="dropdown">
                                                                        <li><a href="#">안주</a></li>
                                                                        <li><a href="#">반찬</a></li>
                                                                        <li><a href="#">국/탕</a></li>
                                                                        <li><a href="#">샐러드</a></li>
                                                                        <li><a href="#">디저트</a></li>
                                                                        <li><a href="#">김치/젓갈</a></li>
                                                                        <li><a href="#">차/음료/술</a></li>
                                                                        <li><a href="#">면</a></li>
                                                                        <li><a href="#">기타</a></li>
                                                                    </ul>
                                                                </li>
                                                                <li><a href="#">국가별</a>
                                                                    <ul class="dropdown">
                                                                        <li><a href="#">한국</a></li>
                                                                        <li><a href="#">베트남</a></li>
                                                                        <li><a href="#">중국</a></li>
                                                                        <li><a href="#">이탈리아</a></li>
                                                                        <li><a href="#">일본</a></li>
                                                                    </ul>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                        <li><a href="<%=request.getContextPath()%>/views/recipe/videoplaylist.jsp">요리영상</a></li>
                                                        <li><a href="#">랭킹</a>
                                                            <ul class="dropdown">
                                                                <li><a href="#">인기셰프</a></li>
                                                                <li><a href="<%=contextPath%>/topviews.rc">인기레시피</a></li>
                                                            </ul>
                                                        </li>
                                                        <li><a href="#">더보기</a>
                                                            <ul class="dropdown">
                                                                <li><a href="<%= contextPath %>/eventList.ev?cpage=1">이벤트</a></li>
                                                                <li><a href="<%= contextPath %>/noticeList.no?cpage=1">공지사항</a></li>
                                                                <li><a href="#">고객센터</a>
                                                                    <ul class="dropdown">
                                                                        <li><a href="<%= contextPath %>/faq.cu">자주묻는질문</a></li>
                                                                        <li><a href="<%= contextPath %>/inquiry.cu?cpage=1">1:1문의</a></li>
                                                                    </ul>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                    <!-- Newsletter Form -->
                                                    <div class="search-btn">
                                                        <i class="fa fa-search" aria-hidden="true"></i>
                                                    </div>
                                                </div>
                                                <!-- Nav End -->
                                            </div>
                                        </nav>
                                    </div>
                                </div>
                            </div>

                            
	    <aside id="sidebar" style="background-color: bisque;">
            <div id="latelyViewItemList" style="padding-left: 50px; padding-right: 50px;">
                
            </div>
            <button><span class="btn_t">최근본 레시피</span></button>
            
        </aside>
    <script>
        let outlist = localStorage.getItem("list");
        let list = JSON.parse(outlist);

        if(list==0){
            console.log("asdsadlasjhdaskjd")
            $("#latelyViewItemList").html("<li>최근본상품이 없습니다<li>");
            
        }else{
            console.log(123)
            var latelyList = [];
            for (i in list){
                var strArray = list[i].split('|');
                var lately = '<div><a href="recipeView.rc?recipeNo='+strArray[0]+'"><img src="/today'+strArray[1]+'"></a>'
                            +strArray[2]+'</div>';
                    
                latelyList += lately;
                
            }
            $("#latelyViewItemList").html(latelyList);
        }

        
        
        $(function(){
        	
            
            var duration = 300;
    
            var $side = $('#sidebar');
            var $sidebt = $side.find('button').on('click', function(){
                $side.toggleClass('open');
    
                if($side.hasClass('open')) {
                    $side.stop(true).animate({left:'0px'}, duration);
                    $sidebt.find('span').text('X');
                }else{
                    $side.stop(true).animate({left:'-300px'}, duration);
                    $sidebt.find('span').text('최근본레시피');
                };
            });
            
            
            
        });
        
    </script>
                            
                            
    </header>
    <!-- ##### All Javascript Files ##### -->
    
    <!-- ##### All Javascript Files ##### -->
    
    <!-- jQuery-2.2.4 js -->
    <script defer src="<%=application.getContextPath()%>/resources/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script defer src="<%=application.getContextPath()%>/resources/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script defer src="<%=application.getContextPath()%>/resources/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script defer src="<%=application.getContextPath()%>/resources/js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script defer src="<%=application.getContextPath()%>/resources/js/active.js"></script>
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
   
</body>
</html>