<%@page import="com.todayTable.recipe.model.vo.MyWishlist"%>
<%@page import="com.todayTable.recipe.model.vo.MyComment"%>
<%@page import="com.todayTable.member.model.vo.Member"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.todayTable.recipe.model.vo.Recipe"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	ArrayList<Recipe> list = (ArrayList<Recipe>)request.getAttribute("list");
	ArrayList<MyComment> clist = (ArrayList<MyComment>)request.getAttribute("clist");
	ArrayList<MyWishlist> wlist = (ArrayList<MyWishlist>)request.getAttribute("wlist");
	Recipe myrecipe = (Recipe)session.getAttribute("myrecipe");
	
%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>오늘의 식탁</title>

<style>
/* 로고 이미지 영역 수정했음 */
.nav-brand {
	width: 150px;
}

#mypage-form table {
	margin: auto;
}

#mypage-form table {
	margin: auto;
}

#mypage-form input {
	margin: 5px;
}

#t1 {
	width: 200px;
	height: 40px;
	text-align: left;
}

#t2 {
	width: 600px;
}

#sumin-col {
	flex: 0 0 25%;
}

#sumin-row {
	flex-wrap: wrap;
}

#content-510 {
	padding-left: 5%;
}

#box-sm {
	background-color: white;
	border: 2px solid rgb(224, 224, 224);
	width: 150px;
	height: 35px;
	border-radius: 10px;
	margin: 10px;
	margin-left: 50px;
	text-align: center;
	line-height: 35px;
}

.tag {
	box-sizing: border-box;
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	padding-top: 20px;
}

#tag-li {
	cursor: pointer;
	font-weight: bold;
}

.counter {
	color: gray;
	font-size: medium;
}

#img-food {
	border-radius: 20px;
	margin: auto;
	max-width: 100%;
	margin-bottom: 10px;
}

.post-meta {
	-webkit-box-align: center;
	align-items: center;
	justify-content: space-between;
}

.info_set {
	width: 42px;
    height: 42px;
}

.info_pic .info_set {
	display: inline-block;
    vertical-align: top;
	position: relative;
    top: -180px;
    left: 80px;
}

.widget_title > h6 {
    background: #fee2d9;
    height: 40px;
    width: 90%;
    line-height: 40px;
    border-radius: 2px;
    margin-bottom: 30px;
}

</style>



</head>

<body>
	<%@ include file="../common/menubar.jsp"%>
<!-- ----------------------------------------------------------------------------------------------------- -->
	<!-- ##### Breadcumb Area Start ##### -->
	<div class="breadcumb-area bg-img bg-overlay"
		style="background-image: url(img/bg-img/breadcumb2.jpg);">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="breadcumb-text text-center">
						<h2>myPage</h2>
					</div>
				</div>
			</div>
		</div>
	</div> <br><br>
	<!-- ##### Breadcumb Area End ##### -->
<!-- ----------------------------------------------------------------------------------------------------- -->


	<div class="row" align="center" >
		<div class="col-12">
			<!-- ##### Best Receipe Area Start ##### -->
			<section class="best-receipe-area">
				<div class="container">
					<div class="row" id="sumin-row">
							<div class="col">
									<!-- ------------------------------------------------------------- -->
									<ul class="nav nav-tabs">
										<li class="nav-item"><a class="nav-link active"
											data-toggle="tab" href="#recipe"> 내가 쓴 레시피 </a></li>
										<li class="nav-item"><a class="nav-link"
											data-toggle="tab" href="#comment"> 내가 쓴 댓글 </a></li>
										<li class="nav-item"><a class="nav-link"
											data-toggle="tab" href="#wish"> 찜 목록 </a></li>
									</ul>
									<!-- ---------------------------------------------------------------- -->
					
									<!-- ---------------------------------------------------------------- -->

									<div class="tab-content" >
									<!-- --------------------------------------------------------------------------------------- -->
										<div class="tab-pane fade show active" id="recipe">
											<div class="row" align = "center">
												<div class="col-12">

													<!-- ##### Best Receipe Area Start ##### -->
													<div class="container"> <br>

														<div align="right">
															<a href="#" class="btn btn-success" role="button"> 레시피 작성</a>
														</div> <br>

														<div class="row" id="sumin-row">
															<% if(list.isEmpty()) {%>
															<p>작성된 레시피가 없습니다.</p>
															<%} else { %>
															<% for(Recipe r : list) {%>
															<input type="hidden" value="<%= r.getMemNo() %>>">
															<div class="col-12 col-sm-6 col-lg-4" id="sumin-col" style="padding-left: 0px;">
																<div class="single-best-receipe-area mb-30" style="padding-top: 5px;">
																	<img src="<%= r.getRecipePic() %>" alt="음식 이미지" id="img-food">
																	<div class="receipe-content" style="padding-top: 5px;">
																		<div class="post-comment-share-area d-flex">
																			<div class="post-favourite">
																				<a href="#" style="color: #b5aec4; padding: 10px;"> | <%= r.getRecipeDate()%> </a> 
																				<a href="#" style="color: #b5aec4; padding-left: 5px;"> <i class="fa fa-heart-o" aria-hidden="true"></i> <%=r.getRecipeViews()%></a> 
																				<a href="#"> <h5 style="padding-top: 15px;"> <%= r.getRecipeName()%> </h5> </a>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<!-- Single Best Receipe Area  end -->
															<%} %>
															<%} %>
														</div>

													</div>
												</div>
											</div>
										</div>
					<!-- ------------------------------------------------------------------------------------ -->

					

					<!-- ------------------------------------------------------------------------------------ -->
					<div class="tab-pane fade" id="comment">
						<div class="container">
							<div style="display:flex;justify-content:space-between;align-items:center;margin-bottom:10px; margin-top: 15px;">
								<div style="margin-left: 20px; margin-top: 20px;" >
								  <input type="checkbox" name="ckComment" value="selectall" onclick="selectAll(this)"/> 전체
								</div>
								<div>
									<a href="#" class="btn btn-danger" role="button" onclick="deleteSelected()">삭제하기</a>
								</div>
							  </div>
							<table class="table table-hover"> <br>
								<% if (clist.isEmpty()) {%>
									<p>작성된 댓글이 없습니다.</p>
								<%} else {%>
									<% for (MyComment c : clist) {%>
									<a href="#" target="_blank" class="board-list"> 
										<thead></thead>
										<tbody>
											<tr>
												<td style="width: 5%; padding-top: 20px; padding-left: 20px;">
													<div class="only_box">
														<div class="FormInputCheck">
															<input id="check_comment_100" type="checkbox" class="input_check" name="ckComment">
															<label for="check_comment_100" class="label">
																<span class="blind"></span>
															</label>
														</div>
													</div>
												</td>
												<td style="width: 70%; padding-top: 20px; ">
													<a href="#" target="_blank" class="board-list">
														<div class="inner_list" style="font-weight: 400;">
															<strong class="article">
																<%=c.getComContent()%>
															</strong>
														</div>
													</a>
													<div class="comment_date"  style="color: gray; font-size: small;">
														<%=c.getComDate()%>
													</div>
													<div class="comment_title" style="color: gray; font-size: small;"> 
														<%=c.getRecipeName()%>
														<span class="cmt" style="color: red;">[<em><%=c.getRecipeViews()%></em>]</span>
													</div>
												</td>
												<td style="width: 25%;" align="center">
													<img src="<%=c.getRecipePic() %>" style="width: 120px; height: 90px; border-radius: 10px;">
												</td>
											</tr>
										</tbody>
									</a>
									<%}%>
								<%}%>
							</table>
						</div>
					</div>
					
					<script>
						// 전체 선택
						function selectAll(source) {
							var checkboxes = document.getElementsByName('ckComment');
							for(var i=0, n=checkboxes.length;i<n;i++) {
								checkboxes[i].checked = source.checked;
							}
						}

						// 삭제 버튼 클릭 시 삭제하기
						function deleteSelected() {
							var checkboxes = document.getElementsByName('ckComment');
							var checked = [];
							for (var i = 0, n = checkboxes.length; i < n; i++) {
							if (checkboxes[i].checked) {
								checked.push(checkboxes[i].value);
							}
							}
							if (checked.length > 0) {
							// TODO: 삭제 로직 구현
							console.log(checked);
							} else {
							alert('삭제할 댓글을 선택해 주세요.');
						}
						}


					</script>
					

										
							<!-- ------------------------------------------------------------------------------------ -->





							<!-- ------------------------------------------------------------------------------------ -->
										<div class="tab-pane fade" id="wish">
											<div class="container">

												<div align="right"> <br>
													<a href="#" class="btn btn-danger" role="button"> 삭제하기</a>
												</div> 
												<table class="table table-hover"> <br>
													<% if (wlist.isEmpty()) {%>
														<p>찜한 목록이 없습니다.</p>
														<%} else {%>
															<% for (MyWishlist w : wlist) {%>
													<a href="#" target="_blank" class="board-list"> 
														<thead></thead>
														<tbody>
														<tr>
															<td style="width: 5%; padding-top: 20px; padding-left: 20px;">
																<div class="only_box">
																	<div class="FormInputCheck">
																		<input id="check_comment_100" type="checkbox" class="input_check"> 
																		<label for="check_comment_100" class="label"> 
																			<span class="blind"></span>
																		</label>
																	</div>
																</div>
															</td>
															
															<td style="width: 25%;" align="center;">
																<img src="<%= w.getRecipePic() %>" style="width: 120px; height: 90px; border-radius: 10px;">
															</td>

															<td style="width: 70%; padding-top: 20px;">
																 <a href="#" target="_blank" class="board-list">
																	<div class="inner_list" style="font-weight: 400;">
																		<strong class="article"> <%= w.getRecipeName() %> <span class="cmt" style="color: red;">[<em><%= w.getRecipeViews() %></em>]</span> </strong> 
																	</div>
																</a>
															</td>




														</tr>
													</tbody>
													</a>
													<%}%>
												<%}%>
												</table>

												</div>
											</div>
							<!-- ------------------------------------------------------------------------------------ -->
										</div>
							<!-------------------------------------------------------------------------------------------------------------->
						</div>
						<!-- side_bar -->
						<div class="col-12 col-lg-4">
							<div class="blog-sidebar-area">
								<!-- Widget start -->
								<div class="widget_title">
									<h6>about me</h6>
								</div>
								<div class="single-widget mb-80" style="max-width: 200px;">
									<div class="text-center">
										<div class="info_pic">
											<a href="javascript:void(0);" onclick="$('#vProfileImageModal').modal('show')">
												<img src="<%=loginUser.getMemImg() %>" style="border-radius: 50%;"></a>
											<a href="javascript:void(0);" class="info_set" onclick="$('#vProfileImageModal').modal('show')" >
												<img src="https://recipe1.ezmember.co.kr/img/mobile/icon_camera2.png" alt="사진변경"></a>
												<p style="font-size: 20px; font-weight: 600; color: #51545f;" ><%= loginUser.getNickName() %></p>
										</div>
										<div class="date-comments d-flex justify-content-between">
											<div class="mycount" align="left" style="font-size: 16px; color: #51545f; font-weight: 600;"> 
												<span class="comments" >내 레시피: 20 </span>
												<span class="comments" style="padding-left: 20px;">내 댓글: 10 </span>
											</div> 
										</div>
									</div>
								</div>
								<!-- widget end -->
							</div>
						</div>
						<!-- side_bar end -->
								
								
							</div>
						</div>
						</section>
					</div>
				</div>
	
	<!-- ##### Best Receipe Area End ##### -->
<!-- ----------------------------------------------------------------------------------------------------- -->
				








	<!-- ##### Footer Area Start ##### -->
	<footer class="footer-area">
		<div class="container h-100">
			<div class="row h-100">
				<div
					class="col-12 h-100 d-flex flex-wrap align-items-center justify-content-between">


					<!-- Footer Social Info -->
					<div class="footer-social-info text-right">
						<a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
						<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
						<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a> <a
							href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a> <a
							href="#"><i class="fa fa-behance" aria-hidden="true"></i></a> <a
							href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
					</div>


					<!-- Footer Logo -->
					<div class="footer-logo">
						<a href="index.html"><img src="img/core-img/logo.png" alt=""></a>
					</div>




					<!-- Copywrite -->
					<p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved | This template is made with 
						<i class="fa fa-heart-o" aria-hidden="true"></i> by 
						<a href="https://colorlib.com" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- ##### Footer Area Start ##### -->


</body>

<!-- ##### All Javascript Files ##### -->
<!-- jQuery-2.2.4 js -->
<script defer
	src="<%=application.getContextPath()%>/resources/js/jquery/jquery-2.2.4.min.js"></script>
<!-- Popper js -->
<script defer
	src="<%=application.getContextPath()%>/resources/js/bootstrap/popper.min.js"></script>
<!-- Bootstrap js -->
<script defer
	src="<%=application.getContextPath()%>/resources/js/bootstrap/bootstrap.min.js"></script>
<!-- All Plugins js -->
<script defer
	src="<%=application.getContextPath()%>/resources/js/plugins/plugins.js"></script>
<!-- Active js -->
<script defer
	src="<%=application.getContextPath()%>/resources/js/active.js"></script>

</html>