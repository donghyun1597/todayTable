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


		body * {
			box-sizing: border-box;
			border: 1px solid black;
		}

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
			</div>
			<nav class="navbar navbar-default">
				<div class="container-fluid">
					<ul class="nav navbar-nav">
						<li><a href="#">레시피</a></li>
						<li><a href="#">랭킹</a></li>
						<li><a href="#">요리영상</a></li>
						<li><a href="#">더보기</a></li>
					</ul>
				</div>
			</nav>
		</div>
		<div class="content">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">

				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>


				<div class="carousel-inner">
					<div class="item active">
						<img src="resources/image/asparagus-g33d4766a3_1920.jpg" alt="Los Angeles">
					</div>

					<div class="item">
						<img src="resources/image/eclair-gfb7350027_1920.jpg" alt="Chicago">
					</div>

					<div class="item">
						<img src="resources/image/meat-skewer-g6d8786cc4_1920.jpg" alt="New York">
					</div>
				</div>

				<a class="left carousel-control" href="#myCarousel" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control" href="#myCarousel" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>
</body>

</html>