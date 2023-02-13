<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메뉴바</title>

    <style>
    *{ /* 화면 전체의 기본적인 패딩,마진 제거 */
    margin:0px;
    padding:0px;
   }

   nav.dropmenu{
    display:flex; /*dropmenu를 flexbox로 만들겠다고 선언*/
    justify-content: center; /*flex된 dropmenu 를 가운데 정렬*/
    height: 48px; /*높이지정*/
   }

   ul{
    list-style: none;/* ul의 하위에 속하는 전체 속성에 list-style없음*/
    display: flex;/* flex 선언*/
    background-color: #fafafa;/* 바탕색*/
    border-radius: 5px;/* 보더를 둥글게*/
   }

   a{
    color: rgb(66, 66, 66);/* 컬러*/
    text-decoration: none;/* a태그의 밑줄 삭제*/
    padding: 0px 10px 0px 10px;/* 패딩추가*/
    /* font-size: 16px; */
    height: 48px;/* 높이*/
    line-height: 48px;/* 글씨의 높이를 중간으로 맞춰줌*/
    display: block;/* 블럭형으로 변경*/
    font-family: "Noto Sans KR", Helvetica, "Helvetica Neue", Arial, "sans-serif";
    font-weight: 550;
   }

   .dropmenu li{
    width:150px;/* 넓이 지정*/
   }

   .dropmenu ul ul{
    display:none; /*.dropmenu의 ul 하위의 ul을 숨김처리*/
   }

   .dropmenu ul li:hover{/* 마우스를 올릴때 하단에 밑줄나오도록*/
    border-bottom: 2px solid rgb(147, 112, 98);/* 보더 지정*/
    box-sizing:border-box;/* 박스의 크기를 보더의 크기를 포함한 크기로 변경*/
   }

   .dropmenu ul li a:hover{
    color: rgb(211, 84, 0);
   }

   .dropmenu ul li:hover ul{ /* 마우스를 ul 하위 li위에 올릴때 li 하위ul 을 출력*/
    display:block;/* 디스플레이 출력되도록 설정*/
    position:absolute;/* ul의 위치를 부모의 하위에 나오도록 고정*/
   }

   .dropmenu ul li:hover li:hover{/* 하위 드롭다운 메뉴에 마우스 올릴시 색 반전효과*/
    border-bottom:0px;/* 하단 보더 없앰*/
    box-sizing:border-box;/* 박스의 크기를 보더의 크기를 포함한 크기로 변경*/
   }


   .dropmenu ul li:hover li.subdropmenu ul{/*추가 2단 드랍메뉴 구성*/
     display: none;/*추가 드랍메뉴 숨기기*/
   }

   .dropmenu ul li:hover li.subdropmenu:hover ul{
     display:block;/*추가 드랍메뉴 활성화*/
     position:absolute;/*추가 드랍메뉴 위치를 부모 기준으로 고정*/
     left: 100px;/*추가 드랍메뉴 위치를 왼쪽에서 100px만큼 옮김(.dropmenu li 에서 지정한 넓이값 만큼)*/
     top: 0px;/*추가 드랍메뉴 위치를 상단에서 30px만큼 옮김(a 에서 지정한 높이값 만큼)*/
   }
   
.dropmenu ul li:hover li.subdropmenu:hover ul li{
     width: 120px;/*추가 하위메뉴 넓이 수정*/
   }

    </style>


</head>
<body>
    <body>
        <header>
        <nav class="dropmenu"><!-- 네비게이션 선언-->
        <ul>
           <li class="main1"><a href="#">레시피 &or;</a><!-- 드롭다운할 상위메뉴--><!-- 상위메뉴-->
                <ul>

                 <li class="subdropmenu"><a href="#">테마별</a>
                    <ul>
                        <li id="sub1"><a href="#">건강식</a></li>
                        <li id="sub2"><a href="#">캠핑요리</a></li>
                        <li id="sub3"><a href="#">간단자취</a></li>
                        <li id="sub4"><a href="#">편의점꿀조합</a></li>
                        <li id="sub5"><a href="#">반려동물위한</a></li>
                        <li id="sub6"><a href="#"></a></li>
                    </ul>

                </li>
                <li class="subdropmenu"><a href="#">도구별</a>
                    <ul>
                        <li><a href="#">전자레인지</a></li>
                        <li><a href="#">오븐</a></li>
                        <li><a href="#">에어프라이어</a></li>
                        <li><a href="#">기타</a></li>
                        <li><a href="#"></a></li>
                        <li><a href="#"></a></li>
                    </ul>
                </li>

                <li class="subdropmenu"><a href="#">재료별</a>
                    <ul>
                        <li><a href="#">돼지고기</a></li>
                        <li><a href="#">소고기</a></li>
                        <li><a href="#">닭고기</a></li>
                        <li><a href="#">해산물</a></li>
                        <li><a href="#">채소</a></li>
                        <li><a href="#">기타</a></li>
                    </ul>
                </li>

                <li class="subdropmenu"><a href="#">조리방법별</a>
                    <ul>
                        <li><a href="#">구이</a></li>
                        <li><a href="#">찜</a></li>
                        <li><a href="#">볶음</a></li>
                        <li><a href="#">무침</a></li>
                        <li><a href="#">튀김</a></li>
                        <li><a href="#">찌개</a></li>
                    </ul>
                </li>

                <li class="subdropmenu"><a href="#">종류별</a>
                    <ul>
                        <li><a href="#">안주</a></li>
                        <li><a href="#">반찬</a></li>
                        <li><a href="#">디저트</a></li>
                        <li><a href="#"></a></li>
                        <li><a href="#"></a></li>
                        <li><a href="#"></a></li>
                    </ul>
                </li>

                <li class="subdropmenu"><a href="#">국가별</a>
                    <ul>
                        <li><a href="#">한식</a></li>
                        <li><a href="#">양식</a></li>
                        <li><a href="#">일식</a></li>
                        <li><a href="#">중식</a></li>
                        <li><a href="#"></a></li>
                        <li><a href="#"></a></li>
                    </ul>
                </li>
                </ul>
            </li><!-- 드롭다운할 상위메뉴 종료-->

            <li class="main2"><a href="#">About Us</a></li>
            <li class="main3"><a href="#">랭킹 &or;</a>
                <ul>
                    <li><a href="#">인기셰프</a></li>
                    <li><a href="#">인기레시피</a></li>
                </ul>
            </li>
            <li class="main4"><a href="#">요리영상</a></li>
            <li class="main5"><a href="#">더보기 &or;</a>
                <ul>
                    <li class="subdropmenu"><a href="#">고객센터</a>
                        <ul>
                            <li><a href="<%= contextPath %>/faq.me">자주묻는질문</a></li>
                            <li><a href="#">1:1문의</a></li>
                            <li><a href="#"></a></li>
                        </ul>
                    </li>
                    <li><a href="#">이벤트</a></li>
                    <li><a href="#">공지사항</a></li>
                </ul>
            </li>
        </ul>
        </nav><!-- 네비게이션 종료 선언 ㅠ -->
        </header>



        <footer>    <!-- 푸터 선언 -->

        </footer>   <!-- 푸터 선언 종료 수고하셨습니다-->
       </body>
</body>
</html>