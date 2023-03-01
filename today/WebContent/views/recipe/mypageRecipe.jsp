<%@page import="com.todayTable.recipe.model.vo.Recipe" %>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

		<!DOCTYPE html>
		<html lang="en">

		<head>
			<meta charset="UTF-8">
			<meta name="description" content="">
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
					border-radius: 20px;
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
			</style>



		</head>

		<body>
			<%@ include file="../common/menubar.jsp" %>
				<%@ include file="../recipe/mypageMenubar.jsp" %>
					<br>
					<br>


					<div class="row" align="center">
						<div class="col-12">
							<!-- ----------------------------------------------------------------------------------------------------- -->

							<!-- ##### Best Receipe Area Start ##### -->
							<section class="best-receipe-area">
								<div class="container">
									<div class="row" id="sumin-row">


										<div class="container">
											<div class="row">
												<div class="col">
													<ul class="nav nav-tabs">
														<li class="nav-item">
															<a class="nav-link active" data-toggle="tab" href="#recipe">
																내가 쓴 레시피
															</a>
														</li>
														<li class="nav-item">
															<a class="nav-link" data-toggle="tab" href="#comment">
																내가 쓴 댓글
															</a>
														</li>
														<li class="nav-item">
															<a class="nav-link" data-toggle="tab" href="#wish">
																찜 목록
															</a>
														</li>
													</ul>

													<div class="tab-content">
														<div class="tab-pane fade show active" id="recipe">

															<!-- --------------------------------------------------------------------------------------- -->
															<div class="row" align="center">
																<div class="col-12">

																	<!-- ##### Best Receipe Area Start ##### -->
																	<div class="container"> <br>
																		<div align="right">
																			<a href="#" class="btn btn-success" role="button">레시피 작성</a>
																		</div> <br>

																		<div class="row" id="sumin-row">
																			<% if(list.isEmpty()) {%>
																				<p>작성된 레시피가 없습니다.</p>
																				<%} else { %>

																					<% for(Recipe r : list) {%>
																						<input type="hidden" value="<%= r.getMemNo() %>>">
																						<div class="col-12 col-sm-6 col-lg-4" id="sumin-col">

																							<div class="single-best-receipe-area mb-30" style="padding-top: 5px;">
																								<img src="<%= r.getRecipePic() %>" alt="음식 이미지" id="img-food">
																								<div class="receipe-content" style="padding-top: 5px;">
																									<div class="post-comment-share-area d-flex">
																										<div class="post-favourite">
																											<a href="#" style="color: #b5aec4; padding-right: 60px;">
																												| <%= r.getRecipeDate()%>
																											</a>
																											<a href="#" style="color: #b5aec4; padding: 5px;">
																												<i class="fa fa-heart-o" aria-hidden="true"></i>
																												<%=r.getRecipeViews()%>
																											</a>
																											<a href="#" style="color: #b5aec4; padding: 5px;">
																												<i class="fa fa-comment-o" aria-hidden="true"></i>
																												12
																											</a>
																											<a href="#">
																												<h5 style="padding-top: 15px;">
																													<%= r.getRecipeName()%>
																												</h5>
																											</a>
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
															<!-- ------------------------------------------------------------------------------------ -->

														</div>




														<div class="tab-pane fade" id="comment">
															<!-- ------------------------------------------------------------------------------------ -->
															<div class="container">
															
															
																<table class="table table-hover">
																	<thead></thead>
																	<tbody>
																		<tr>
																			<td style="width: 70%; padding-top: 20px;">
															</div>
															
															<a href="#" target="_blank" class="board-list">
															
																<div class="inner_list" style="font-weight: 400;">
																	<strong class="article">
																		집에서 만드는거 저도 한번 시도해봐야겠어요~^^
																	</strong>
																</div>
																<div class="comment_date" style="color: gray; font-size: small;">
																	2016.09.18.
																</div>
																<div class="comment_title" style="color: gray; font-size: small;">
																	크로와상 생지로 만드는 샌드위치
																	<span class="cmt" style="color: red;">[<em>96</em>]</span>
																</div>
															</a>
															</td>
															<td style="width: 25%;" align="center">
																<img src="img/blog-img/10.jpg" style="width: 120px; height: 90px; border-radius: 10px;">
															</td>
															</tr>
															
															
															</tbody>
															</table>
															
															</div>
															<!-- ------------------------------------------------------------------------------------ -->
													</div>


													<div class="tab-pane fade" id="wish">
															<!-- ------------------------------------------------------------------------------------ -->
															<div class="container">
															
															
																<table class="table table-hover">
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
															
																			<td style="width: 70%; padding-top: 20px;">
															</div>
															
															<a href="#" target="_blank" class="board-list">
															
																<div class="inner_list" style="font-weight: 400;">
																	<strong class="article">
																		크로와상 생지로 만드는 샌드위치
																		<span class="cmt" style="color: red;">[<em>96</em>]</span>
																	</strong>
																</div>
															</a>
															</td>
															<td style="width: 25%;" align="center">
																<img src="img/blog-img/10.jpg" style="width: 120px; height: 90px; border-radius: 10px;">
															</td>
															</tr>
															
															
															</tbody>
															</table>
															
															</div>
															
															<!-- ------------------------------------------------------------------------------------ -->

													</div>



												</div>
											</div>
										</div>
									</div>
								</div>
						</div>


					</div>
					</div>
					</div>
					</section>
					<!-- ##### Best Receipe Area End ##### -->






					<!-- ##### Footer Area Start ##### -->
					<footer class="footer-area">
						<div class="container h-100">
							<div class="row h-100">
								<div class="col-12 h-100 d-flex flex-wrap align-items-center justify-content-between">


									<!-- Footer Social Info -->
									<div class="footer-social-info text-right">
										<a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
										<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
										<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a> <a href="#"><i
												class="fa fa-dribbble" aria-hidden="true"></i></a> <a href="#"><i
												class="fa fa-behance" aria-hidden="true"></i></a> <a href="#"><i
												class="fa fa-linkedin" aria-hidden="true"></i></a>
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
										All rights reserved | This template is made with <i class="fa fa-heart-o"
											aria-hidden="true"></i> by <a href="https://colorlib.com"
											target="_blank">Colorlib</a>
										<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
									</p>
								</div>
							</div>
						</div>
					</footer>
					<!-- ##### Footer Area Start ##### -->


		</body>

		</html>