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