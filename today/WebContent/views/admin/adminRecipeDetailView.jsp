<%@page import="java.util.ArrayList"%>
<%@page import="com.todayTable.recipe.model.vo.CookingOrder"%>
<%@page import="com.todayTable.category.model.vo.Category"%>
<%@page import="com.todayTable.recipe.model.vo.Ingredient"%>
<%@page import="com.todayTable.recipe.model.vo.IngreClass"%>
<%@page import="com.todayTable.recipe.model.vo.Recipe"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	HashMap<String,Object> list =(HashMap<String,Object>)request.getAttribute("list");
	Recipe recipe = (Recipe)list.get("recipe");
	ArrayList<IngreClass> ingreClass = (ArrayList<IngreClass>)list.get("ingreClass");
	ArrayList<Ingredient> ingredients = (ArrayList<Ingredient>)list.get("ingredients");
	Category category =  (Category)list.get("category");
	ArrayList<CookingOrder> cookingOrders =  (ArrayList<CookingOrder>)list.get("cookingOrders");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오늘의 식탁 관리자</title>
<link rel="icon" href="resources/image/core-img/favicon.ico">
<style>
#recipeHead{
	color: white;
	text-align: center;
}

.recipe_content{
        	margin-right:50px;
        	font-size: 15px;
        	color:#808080;
        
        }

</style>
</head>
<body>
	<div class="d-flex" id="wrapper">
		<%@ include file="adminMenubar.jsp" %>
		<div id="page-content-wrapper">
            <br><br>
            <div id="recipeHead" style="background-color: rgb(240, 225, 210);">
				<br>
				<h1 class="foot"><b>RECIPE</b></h1>
				<br>
			</div>

            <br><br>

            <table align="center" style="width:900px;" class="table table-striped">
                <thead>
                    <tr>
                        <th colspan="2" style="text-align:center;"><%=recipe.getRecipeName() %></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td colspan="2"></td>    
                    </tr>
                    
                </tbody>
            </table>
           
		</div>
		
	</div>
</body>
</html>