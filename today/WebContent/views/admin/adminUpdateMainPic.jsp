<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<div class="d-flex" id="wrapper">
		<%@ include file="adminMenubar.jsp" %>

		
		<div id="page-content-wrapper">
			
			<div class="container">
				<h2>메인 사진 변경</h2>
				<br><br>
			  
				<iframe src="<%=contextPath%>/index.jsp" frameborder="0" width="1200" height="550"></iframe>
				<br>
				<!-- Button to Open the Modal -->
				<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
				  사진변경
				</button>
			  
				<!-- The Modal -->
				<div class="modal fade" id="myModal">
				  <div class="modal-dialog modal-lg">
					<div class="modal-content">
					
					  <!-- Modal Header -->
					  <div class="modal-header">
						<h4 class="modal-title">사진변경</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					  </div>
					  
					  <!-- Modal body -->
					  <div class="modal-body">
						<div>
							<span style="font-weight: 800;">현재 적용중인 이미지</span>
							<br><hr>
							<div class="presentImg" style="width:200px; height:200px; display:inline-block; border: 1px solid black; margin-left: 15px;">
								메인에 적용돼있는 이미지1
							</div>
							<div class="presentImg" style="width:200px; height:200px; display:inline-block; border: 1px solid black; margin-left: 15px;">
								메인에 적용돼있는 이미지2
							</div>
							<div class="presentImg" style="width:200px; height:200px; display:inline-block; border: 1px solid black; margin-left: 15px;">
								메인에 적용돼있는 이미지3
							</div>
						</div>
						<hr>
							<span style="font-weight: 800;">이미지 선택</span>
					  </div>
					  
					  <!-- Modal footer -->
					  <div class="modal-footer">
						<button type="submit" class="btn btn-sm btn-danger">적용</button>
					  </div>
					  
					</div>
				  </div>
				</div>
				
			  </div>
		</div>
		
		
		
	</div>

	
</body>
</html>