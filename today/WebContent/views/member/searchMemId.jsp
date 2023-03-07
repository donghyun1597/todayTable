<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String alertMsg = (String)session.getAttribute("alertMsg");

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Document</title>
    <style>
	

    </style>
  </head>

  <body>
	<style>
		*{
			text-align : center;
		}
	</style>

	<section>
	
	<form name="searchFrm">
		<input type="hidden" name="name">
		<input type="hidden" name="phone">
	</form>
	
	
	<div id="div1">
	<h3>아이디 찾기</h3>
	
	<table class ="table" style="margin:0 auto;width:700px;">
		<tr>
			<td><input type="text" name="memName" id="name" class="form-control" placeholder="이름을 입력하세요"></td>
		</tr>
		<br>
		<tr>
			<td><input type="text" name="phone" id="phone" class="form-control" placeholder="전화번호를 입력하세요"></td>
		</tr>
	</table>
	<button type="button" id="searchBtn" class= "btn btn-outline-info btn sm" onclick="searchMemId()">검색</button>

	</div>
	</section>
	
	<script>
      function searchMemId(){
         var memName = document.getElementById("memName").value;
         var phone = document.getElementById("phone").value;
         if(name == "" && phone == ""){
            alert("모든 정보를 입력해주세요.");
            return;
         }
         
         var url = "<%=request.getContextPath()%>/searchMemId.me"; // 요청 서블릿 url
         
         var title ="searchMemId"; //윈도우 창 이름
         
         var status = "left=500px, top=100px, width=300px, height=200px, menubar-no, status=no, scrollbar=yes";
         
         
         var popup = window.open("",title,status); //빈창 오픈
         
         searchFrm.name.value=name;
         searchFrm.phone.value=phone;
         
         searchFrm.target = title;//popup창과 form태그를 연결
         //action,method설정 후 form태그 submit
         searchFrm.action = "searchMemId2.jsp";
         searchFrm.method="post";
         
         searchFrm.submit();
      }
   </script>
	
	
</body>
</html>