<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

	<style>
		*{/* 화면 전체의 기본적인 패딩,마진 제거 */
			margin:0px;
			padding:0px;
		}

		nav.dropmenu{
			display:flex;/* dropmenu를 flexbox로 만들겠다고 선언*/
			justify-content: center;/*flex된 dropmenu 를 가운데 정렬*/
			height: 48px;/* 높이지정*/
			
		}

		.dropmenu *{
			z-index: 999;
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
			font-weight: bold;
		}

		.dropmenu li{
			width:100px;/* 넓이 지정*/
		}

		.dropmenu ul ul{
			display:none;/* .dropmenu의 ul 하위의 ul을 숨김처리*/
		}

		.dropmenu ul li:hover{/* 마우스를 올릴때 하단에 밑줄나오도록*/
			border-bottom: 3px solid rgb(147, 112, 98);/* 보더 지정*/
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

		.nav,nav+div {
			margin-left: 30px;
			font-size: 20px;
		}

		.main-img {
			display: flex;
			justify-content: center;
		}


		.carousel-inner img {
			width: 100%;
			height: 100%;
		}


		/* body * {
		box-sizing: border-box;
		border: 1px solid black;
		} */

		.wrap {
			width: 1000px;
			height: 1200px;
			margin: auto;
		}
		/* .header{
		height: 20%;
		width: 100%;
		}
		.content{
		height: 60%;
		width: 100%;
		}
		.content>.carousel{
		height: 10%;
		width: 100%;
		} */
	</style>
</head>

<body>
	<div class="wrap">
		<div>
			<div class="header">
				<span>
					<img src="resources/image/KakaoTalk_20230130_140956341.png" alt="" width="170" height="170">
				</span>
				<span>
					<!-- <img src="free-icon-user-2521782.png" alt=""> -->
				</span>
				<%@ include file="views/menubar.jsp" %>
			</div>		
		</div>
	</div>
</body>

</html>