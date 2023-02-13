<%@page import="com.todayTable.notice.model.vo.Notice" %>
	<%@page import="java.util.ArrayList" %>
		<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
			<% ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");
					%>
					<% String contextPath=request.getContextPath(); %>
						<!-- contextPath = localhost:8002/today -->
						<!DOCTYPE html>
						<html lang="en">

						<head>
							<meta charset="utf-8" />
							<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
							<meta name="description" content="" />
							<meta name="author" content="" />
							<title>오늘의 식탁 관리자</title>
							<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
								rel="stylesheet">
							<script
								src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
							<link rel="stylesheet"
								href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
							<!-- Favicon-->
							<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
							<!-- Core theme CSS (includes Bootstrap)-->
							<link href="<%= contextPath %>/resources/css/styles.css" rel="stylesheet" />
							<style>
								.list-group-flush span {
									font-weight: 900;
									margin-left: 30px;
								}

								@import url(https://fonts.googleapis.com/css?family=Roboto:400,700,500);

								body {
									font-family: "Roboto", sans-serif;
								}

								#wrap {
									height: 1000px;
								}

								#paging {
									display: flex;
									justify-content: center;
								}

								th {
									text-align: center;
								}

								.dropdown-toggle {
									background-color: white;
									color: gray;
								}

								button {
									display: inline-block;
								}

								input {
									display: inline-block;
								}

								#notice {
									text-align: center;
								}

								#noticeList {
									display: flex;
									justify-content: center;
								}

								hr {
									width: 800px;
									margin: auto;
								}

								h6 {
									color: gray;
									text-align: center;
									font-size: 14px;
								}

								td a {
									color: black;
									text-decoration: none;
								}

								.btn-group button {
									border-color: lightgray;
								}
							</style>
						</head>

						<body>
							<div class="d-flex" id="wrapper">
								<!-- Sidebar-->
								<div class="border-end bg-white" id="sidebar-wrapper">
									<div class="sidebar-heading bg-light"
										style="width: 180px; margin: auto; padding: 0px;">
										<img src="<%= contextPath %>/resources/image/logo.jpg" alt=""
											style="box-sizing: border-box; width: 100%; height: 100%;">
									</div>
									<div class="list-group list-group-flush">
										<a class=" list-group-item list-group-item-action list-group-item-light p-3"
											href="#!" style="border-top: 1px solid #dee2e6;"><span>메인사진변경</span></a>
										<a class="list-group-item list-group-item-action list-group-item-light p-3"
											href="#!"><span>회원관리</span></a> <a
											class="list-group-item list-group-item-action list-group-item-light p-3"
											href="	"><span>공지사항관리</span></a> <a
											class="list-group-item list-group-item-action list-group-item-light p-3"
											href="#!"><span>문의/신고관리</span></a>
										<a class="list-group-item list-group-item-action list-group-item-light p-3"
											href="<%= contextPath %>/adminLogout.me"><span>로그아웃</span></a>
									</div>
								</div>
								<!-- Page content wrapper-->
								<div id="page-content-wrapper">

									<!-- Page content-->
									<div class="container-fluid">
										<div id="wrap">
											<br>
											<br>
											<div id="notice">
												<h1 class="foot">
													<b>공지사항</b>
												</h1>
												<br>
												<h6>- 오늘의식탁 운영관련 글을 공지하는 '공지사항' 페이지입니다.</h6>
												<br>
												<hr>
												<br>
												<br>
												<div class="notice-wrapper">
													<div class="m-4" id="noticeList">
														<form action="<%= contextPath %>/delete.no" method="post">
															<table class="table table-striped" style="width: 800px;">
																<thead>
																	<tr>
																		<th style="width: 10%;">선택</th>
																		<th style="width: 10%;">글번호</th>
																		<th style="width: 10%;">분류</th>
																		<th style="width: 50%;">제목</th>
																		<th style="width: 20%;">작성일</th>
																	</tr>
																</thead>
																<tbody>
																	<!-- case1. 공지글 없음 -->
																	<% if(list.isEmpty()) { %>
																		<tr>
																			<td colspan="5">존재하는 공지사항이 없습니다.</td>
																		</tr>
																		<% } else { %>
																			<!-- case2. 공지글 있음 -->
																			<% for(Notice n :list) { %>
																				<tr>
																					<td><input type="checkbox"
																							name="noticeCheck"></td>
																					<td>
																						<%= n.getNoticeNo() %>
																					</td>
																					<td>
																						<%= n.getNoticeClsfc() %>
																					</td>
																					<td style="text-align: left;"><a
																							href="#">
																							<%= n.getNoticeName() %>
																						</a></td>
																					<td>
																						<%= n.getNoticeDate() %>
																					</td>
																				</tr>
																				<% } %>
																					<% } %>
																</tbody>
															</table>
														</form>
													</div>
													<a class="btn btn-sm btn-warning" href="<%= contextPath %>/deleteNotice.no"><b>삭제</b></a>


												</div>

												<div class="m-4" id="paging">
													<nav>
														<ul class="pagination">
															<li class="page-item"><a href="#" class="page-link">
																	&lt; </a></li>
															<li class="page-item"><a href="#" class="page-link">1</a>
															</li>
															<li class="page-item"><a href="#" class="page-link">2</a>
															</li>
															<li class="page-item"><a href="#" class="page-link">3</a>
															</li>
															<li class="page-item"><a href="#" class="page-link">4</a>
															</li>
															<li class="page-item"><a href="#" class="page-link">5</a>
															</li>
															<li class="page-item"><a href="#" class="page-link">
																	&gt; </a></li>
														</ul>
													</nav>
												</div>

												<div class="col-5" style="margin: auto">
													<div class="btn-group">
														<button type="button" class="btn btn-primary dropdown-toggle"
															data-bs-toggle="dropdown">제목</button>
														<ul class="dropdown-menu">
															<li><a class="dropdown-item" href="#">내용</a></li>
															<li><a class="dropdown-item" href="#">제목+내용</a></li>
														</ul>
														<input type="text" class="form-control" placeholder="검색어 입력">
														<button type="button" class="btn btn-secondary">
															<i class="bi-search"></i>
														</button>
													</div>
												</div>
											</div>
										</div>

									</div>
								</div>
							</div>
							<!-- Bootstrap core JS-->
							<script
								src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
							<!-- Core theme JS-->
							<script src="<%= contextPath %>/resources/js/scripts.js"></script>
						</body>

						</html>