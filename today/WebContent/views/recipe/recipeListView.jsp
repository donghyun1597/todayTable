<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../common/menubar.jsp" %>
    <div class="breadcumb-area bg-img bg-overlay">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-text text-center">
                        <h2>Recipe</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<%if(list == null){ %>
	<div><h1></h1></div>
	<div style="width:300px; height:415px;">
        <div style="margin-right: 30px;">
            <div class="single-best-receipe-area mb-30">
                <div style="width:250px; height:250px;">
                    <a href="<%=contextPath%>/recipeView.rc?recipeNo='<%=%>'">
                        <img src="<%=contextPath%>'+list[i].recipePic+'" alt="음식2" style="width:100%; height:100%;">
                    </a>
                </div>
        
                <div style="margin-top: 10px;">
                    <div style="font-size:17px;">
                      +list[i].recipeName+ 
                    </div>
                    <div class="ratings">난이도'+list[i].recipeDifficulty+'<br>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star-o" aria-hidden="true"></i>
                    </div>
                  '조회수 : ' + list[i].recipeViews+
                </div>
            </div>
        </div>
    </div>
	
</body>
</html>