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
   
   int myrecipeCount = list.size();
   int mycommentCount = clist.size();
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script defer src="<%=application.getContextPath()%>/resources/js/jquery/jquery-2.2.4.min.js"></script>
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

.modal-content {
   z-index: 1055;
}

#imgPreview {
    max-width: 100%;
    max-height: 200px;
    display: none;
    margin: 0 auto;
}






</style>



</head>

<body>

   <%@ include file="../common/menubar.jsp"%>
    
<!-- ----------------------------------------------------------------------------------------------------- -->
   <!-- ##### Breadcumb Area Start ##### -->
   <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/breadcumb2.jpg);">
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
                                             <a href="<%=contextPath%>/recipeWrite.rc" class="btn btn-outline-success btn-sm" role="button"> 레시피 작성</a>
                                          </div> <br>

                                          <div class="row" id="sumin-row">
                                             <% if(list.isEmpty()) {%>
                                             <p>작성된 레시피가 없습니다.</p>
                                             <%} else { %>
                                             <% for(Recipe r : list) {%>
                                             <input type="hidden" value="<%= r.getMemNo() %>>">
                                             <div class="col-12 col-sm-6 col-lg-4" id="sumin-col" style="padding-left: 0px;">
                                                <div class="single-best-receipe-area mb-30" style="padding-top: 5px;">
                                                   <a href="<%=contextPath%>/recipeView.rc?recipeNo=<%=r.getRecipeNo()%>"><img src="<%=contextPath + r.getRecipePic() %>" alt="음식 이미지" id="img-food"></a>
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
                           <form action="deleteComment.me">
                              <div class="container">
                                 <div  align="right" style="padding-top: 20px;">
                                    <button type="submit" id="checkDelete" class="btn btn-outline-danger btn-sm" onclick="return confirm('선택된 게시물을 삭제하시겠습니까?');">삭제하기</button>
                                 </div>

                                 <table class="table table-hover">
                                    <br>
                                    <%
                                       if (clist.isEmpty()) {
                                    %>
                                    <p>작성된 댓글이 없습니다.</p>
                                    <%
                                       } else {
                                    %>
                                    <%
                                       for (MyComment c : clist) {
                                    %>
                                    <div class="comment-row">
                                       <thead></thead>
                                       <tbody>
                                          <tr>
                                             <td style="width: 5%; padding-top: 20px; padding-left: 20px;">
                                                <div class="only_box">
                                                   <div class="FormInputCheck">
                                                      <input id="checkbox" type="checkbox" class="input_check" name="commentCheck" value="<%=c.getComNo()%>">
                                                      <label for="checkbox" class="label"> <span class="blind"></span></label>
                                                   </div>
                                                </div>
                                             </td>
                                             <td style="width: 70%; padding-top: 20px;">
                                                <div class="comment-content" style="font-weight: 400;">
                                                   <strong class="article"><%=c.getComContent()%></strong>
                                                </div>
                                                <div class="comment-info" style="color: gray; font-size: small;">
                                                   <%=c.getComDate()%>
                                                </div>
                                                <div class="comment-info" style="color: gray; font-size: small;">
                                                   <%=c.getRecipeName()%>
                                                   <span class="cmt" style="color: red;">[<em><%=c.getRecipeViews()%></em>]
                                                   </span>
                                                </div>
                                             </td>

                                             <td style="width: 25%;" align="center"><img
                                                src="<%=contextPath%><%=c.getRecipePic()%>"
                                                style="width: 120px; height: 90px; border-radius: 10px;"></td>

                                             <td style="width: 25%;" align="center">
                                             <a href="<%=contextPath%>/recipeView.rc?recipeNo=<%=c.getComNo()%>">
                                             <img src="<%=contextPath + c.getRecipePic()%>"
                                                style="width: 120px; height: 90px; border-radius: 10px;"></a></td>

                                          </tr>
                                       </tbody>
                                    </div>
                                    <%
                                       }
                                    %>
                                    <%
                                       }
                                    %>

                                 </table>
                              </div>

                           </form>
                        </div>


                        
                        <script>
                           // 전체 선택
                           function selectAll(source) {
                              var checkboxes = document.getElementsByName('commentCheck');
                              for(var i=0, n=checkboxes.length;i<n;i++) {
                                 checkboxes[i].checked = source.checked;
                              }
                           }


                     </script>
                     

                              
                     <!-- ------------------------------------------------------------------------------------ -->





                     <!-- ------------------------------------------------------------------------------------ -->
                              <div class="tab-pane fade" id="wish">
                                 <div class="container" style="padding-top: 50px;">
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
            
                                             </td>
                                             
                                             <td style="width: 25%;" align="center;">

                                                <img src="<%=contextPath%><%= w.getRecipePic() %>" style="width: 120px; height: 90px; border-radius: 10px;">

                                             <a href="<%=contextPath%>/recipeView.rc?recipeNo=<%=w.getRecipeNo()%>">
                                                <img src="<%=contextPath+ w.getRecipePic() %>" style="width: 120px; height: 90px; border-radius: 10px;"></a>

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
                                 <a href="javascript:void(0);" onclick="$('#updateModal').modal('show');$('html, body').animate({scrollTop:0}, 'slow');">
                                    <img src="<%=contextPath+loginUser.getMemImg() %>" style="border-radius: 50%; width: 200px; height: 200px;"></a>
                                 <a href="javascript:void(0);" class="info_set" onclick="$('#updateModal').modal('show');$('html, body').animate({scrollTop:0}, 'slow');" >
                                    <img src="https://recipe1.ezmember.co.kr/img/mobile/icon_camera2.png" alt="사진변경"></a>
                                 <p style="font-size: 20px; font-weight: 600; color: #51545f;"><%= loginUser.getNickName() %></p>
                              </div>
                              <div class="date-comments d-flex justify-content-between">
                                 <div class="mycount" align="left" style="font-size: 16px; color: #51545f; font-weight: 600;"> 
                                    <span class="comments" >내 레시피: <%= myrecipeCount %></span>
                                    <span class="comments" style="padding-left: 20px;">내 댓글:  <%= mycommentCount %></span>
                                 </div> 
                              </div>
                           </div>
                        </div>
                        <!-- widget end -->
                     </div>
                  </div>
                  <!-- side_bar end -->

                  <script>
                     $(document).ready(function(){
                       $('#imageModal').on('show.bs.modal', function (event) {
                        var button = $(event.relatedTarget) // 클릭한 버튼
                        var recipient = button.data('whatever') // 버튼에 있는 데이터 가져오기
                    
                        var modal = $(this)
                        modal.find('.modal-body input').val(recipient)
                       })
                     });






                     function validateImg() {
                        // 파일 유효성 검사 등을 수행
                        if(inputFile.files.length == 1)/* 유효한 파일이 선택되었다면 */ {
                           return true;  // 확인 버튼을 누르면 폼이 서버로 제출됨
                        } else {
                           alert('유효한 파일을 선택해주세요.');
                           return false;  // 확인 버튼을 눌러도 폼이 제출되지 않음
                        }
                        }
                    </script>
                        
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
              <div class="col-12 h-100 d-flex flex-wrap align-items-center justify-content-between">


                  <!-- Footer Social Info -->
                  <div class="footer-social-info text-right">
                      <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                      <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                      <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                      <a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                      <a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a>
                      <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                  </div>

                  
                  <!-- Footer Logo -->
                  <div class="footer-logo">
                      <a href="index.html"><img src="img/core-img/logo.png" alt=""></a>
                  </div>




                  <!-- Copywrite -->
                  <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
&copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">이맛이조</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
              </div>
          </div>
      </div>
  </footer>
   <!-- ##### Footer Area Start ##### -->
</body>

<!-- 대표이미지 변경 모달 -->
<div class="modal" id="updateModal" style="position:absolute;">
    <div class="modal-dialog">
        <div class="modal-content" style="z-index: 1055px; flex-direction: column; flex-wrap: wrap;">
            <div class="modal-header">
                <h6 class="modal-title">대표 이미지 변경</h6>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body" style="text-align: center;">
                <form action="<%= contextPath%>/UpdateImg.me" method="post" enctype="multipart/form-data">
                    <div>
                        <img id="imgPreview" src="#" alt="이미지 미리보기" style="max-width: 100%; max-height: 200px; display: none;">
                    </div><br>
                    <input type="file" name="updateImg" value="updateImg" onchange="previewImage(this);">
                    <br><br>
                    <button type="submit" class="btn btn-sm btn-secondary" onclick="return validateImg();">확인</button>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
function previewImage(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $('#imgPreview').attr('src', e.target.result);
            $('#imgPreview').css('display', 'block');
        }
        reader.readAsDataURL(input.files[0]);
    }
}
</script>









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
<script defer src="<%=application.getContextPath()%>/resources/js/active.js"></script>

</html>