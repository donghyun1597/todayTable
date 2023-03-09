<%@page import="com.todayTable.recipe.model.vo.Recipe"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<Recipe> list = (ArrayList<Recipe>)request.getAttribute("list");

%>
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
	<div style="text-align: center; color:blue"><h1>조회된 레시피가 없습니다</h1></div>
	
	<%}else{ %>
		
		<%for(int i=0;i<list.size();i=i+4){ %>
			
			<div style="display:flex;">
			<%for(int j=i;j<i+4&&j<list.size();j++){ %>
				
				
				<div style="width:300px; height:415px;">
			        <div style="margin-right: 30px;">
			            <div class="single-best-receipe-area mb-30">
			                <div style="width:250px; height:250px;">
			                    <a href="<%=contextPath%>/recipeView.rc?recipeNo='<%=list.get(j).getRecipeNo()%>'">
			                        <img src="<%=contextPath%><%=list.get(j).getRecipePic() %>" alt="음식2" style="width:100%; height:100%;">
			                    </a>
			                </div>
			        
			                <div style="margin-top: 10px;">
			                    <div style="font-size:17px;">
			                      <%=list.get(j).getRecipeName() %> 
			                    </div>
			                    <div class="ratings">난이도'<%=list.get(j).getRecipeDifficulty() %><br>
			                        <i class="fa fa-star" aria-hidden="true"></i>
			                        <i class="fa fa-star" aria-hidden="true"></i>
			                        <i class="fa fa-star" aria-hidden="true"></i>
			                        <i class="fa fa-star" aria-hidden="true"></i>
			                        <i class="fa fa-star-o" aria-hidden="true"></i>
			                    </div>
			                  '조회수 : ' <%=list.get(j).getRecipeViews() %>
			                </div>
			            </div>
			        </div>
			    </div>
		    <%} %>
		    
			</div>
		<%} %>
	   <%} %>
	    
  
</body>
</html>