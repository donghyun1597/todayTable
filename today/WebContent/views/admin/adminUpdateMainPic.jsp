<%@page import="com.todayTable.member.model.vo.MainImg"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<MainImg> mainImgList = (ArrayList<MainImg>)request.getAttribute("mainImgList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오늘의 식탁 관리자</title>
<link rel="icon" href="resources/image/core-img/favicon.ico">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
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
			  
				<!-- <iframe id='frame' src='<%=contextPath%>/index.jsp' frameborder='0' scrolling='no' style='width: 100%;' onload="this.style.height=(this.contentWindow.document.body.scrollHeight+20)+'px';"></iframe> -->
				<br>
				<!-- Button to Open the Modal -->
				<button type="button" id="changePic" class="btn btn-primary" data-toggle="modal" data-target="#myModal" style="display: none;">
				  사진변경
				</button>

				<script>
					$(document).ready(function(){
   						 $("#changePic").trigger('click'); 
					});
				</script>
			  
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
							<iframe src="<%=contextPath%>/index.jsp" style="display:none;"></iframe>
							<span style="font-weight: 800;">현재 적용중인 이미지</span>
							<br><hr>
							<% for(MainImg mi : mainImgList) { %>
							<div class="presentImg" style="width:200px; height:200px; display:inline-block; border: 1px solid black; margin-left: 15px; background-image: url(<%=contextPath%>/<%=mi.getMainImgImg() %>); background-size: 100% 100%;">
								<!-- <img src="<%=contextPath%>/resources/image/bg-img/sumin1.jpeg" width="100%" height="100%"> -->
								<button class="btn btn-sm btn-dark del_btn" value="<%= mi.getMainImgNo() %>">X</button>
							</div>
							<% } %>

							
						</div>
						<hr>
							<span style="font-weight: 800;">이미지 선택</span>
							<br/>
							<form action="<%= contextPath %>/insert.mp" id="enroll-form" method="post" enctype="multipart/form-data">
								<input type="file" multiple class="ex_file" name="fileName" onchange="fileUpload()">
							</form>
					  </div>

					  
					  
					  <!-- Modal footer -->
					  <div class="modal-footer">
						<button type="submit" class="btn btn-sm btn-danger" onclick="test();">적용</button>
					  </div>
					  
					</div>
				  </div>
				</div>
				
			  </div>
		</div>
		
		
		
	</div>

	<script type="text/javascript">
		function test() {
			var imgForm = document.getElementById("enroll-form");
			
			imgForm.submit();
		}

		// function deletePic(){
			$(document).on("click",".del_btn",function(){
				console.log($(this).val());
				console.log($(this).parent().remove(".presentImg"));
				$.ajax({
				url:"deletePic.mp",
				data:{
					imgNo: $(this).val()
				},
				success:function(result){
					$(this).parent().parent().remove('.presentImg');
					
				}
				})
			})
			
		// }
	</script>
</body>
</html>