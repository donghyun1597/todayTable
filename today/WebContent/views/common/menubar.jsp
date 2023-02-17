<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    
</head>
<body>
    <!-- Search Wrapper -->
    <div class="search-wrapper">
        <!-- Close Btn -->
        <div class="close-btn"><i class="fa fa-times" aria-hidden="true"></i></div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <form action="#" method="post">
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
                                    <li><a href="#">맛으로 소통하는</a></li>
                                    <li><a href="#">행복한 식탁!</a></li>
                                    <li><a href="#">오늘의 식탁입니다</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <!-- Top Social Info -->
                    <div class="col-12 col-sm-6">
                        <div class="top-social-info text-right">
                            <a href="#">로그인 <i class="fa fa-linkedin" aria-hidden="true"></i></a>
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
                                            <a class="nav-brand" href="index.html"><img src="resources/image/core-img/logo.png"
                                                    alt=""></a>

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
                                                        <li class="active"><a href="index.jsp">Home</a></li>
                                                        <li><a href="#">레시피</a>
                                                            <ul class="dropdown">
                                                                <li><a href="#">테마별</a>
                                                                    <ul class="dropdown">
                                                                        <li><a href="#">건강식</a></li>
                                                                        <li><a href="#">캠핑요리</a></li>
                                                                        <li><a href="#">간단자취</a></li>
                                                                        <li><a href="#">편의점꿀조합</a></li>
                                                                        <li><a href="#">반려동물위한</a></li>
                                                                    </ul>
                                                                </li>
                                                                <li><a href="#">도구별</a>
                                                                    <ul class="dropdown">
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
                                                                        <li><a href="#">찌개</a></li>
                                                                    </ul>
                                                                </li>
                                                                <li><a href="#">종류별</a>
                                                                    <ul class="dropdown">
                                                                        <li><a href="#">안주</a></li>
                                                                        <li><a href="#">반찬</a></li>
                                                                        <li><a href="#">디저트</a></li>
                                                                    </ul>
                                                                </li>
                                                                <li><a href="#">국가별</a>
                                                                    <ul class="dropdown">
                                                                        <li><a href="#">한식</a></li>
                                                                        <li><a href="#">양식</a></li>
                                                                        <li><a href="#">일식</a></li>
                                                                        <li><a href="#">중식</a></li>
                                                                    </ul>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                        <li><a href="#">요리영상</a></li>
                                                        <li><a href="#">랭킹</a>
                                                            <ul class="dropdown">
                                                                <li><a href="#">인기셰프</a></li>
                                                                <li><a href="#">인기레시피</a></li>
                                                            </ul>
                                                        </li>
                                                        <li><a href="#">더보기</a>
                                                            <ul class="dropdown">
                                                                <li><a href="#">이벤트</a></li>
                                                                <li><a href="#">공지사항</a></li>
                                                                <li><a href="#">고객센터</a>
                                                                    <ul class="dropdown">
                                                                        <li><a href="#">자주묻는질문</a></li>
                                                                        <li><a href="#">1::1문의</a></li>
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
    </header>
    <!-- ##### All Javascript Files ##### -->
   
</body>
</html>