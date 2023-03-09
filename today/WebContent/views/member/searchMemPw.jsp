<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String contextPath = request.getContextPath(); // /jsp	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<title>Insert title here</title>
</head>
<body>

<style>
		*{
			text-align : center;
		}
	</style>
 
	<section>
	<form name="searchFrm">
		<input type="hidden" name="id">
		<input type="hidden" name="name">
		<input type="hidden" name="phone">
	</form>

	<h3>비밀번호 찾기</h3>
	<table class ="table" style="margin:0 auto;width:700px;">
		<tr>
			<td><input type="text" id="id" name="id" class="form-control" placeholder="아이디를 입력하세요"></td>
		</tr>
		<br>
		<tr>
			<td><input type="text" id="name" name="name" class="form-control" placeholder="이름을 입력하세요"></td>
		</tr>
		<br>
		<tr>
			<td><input type="text" id="phone" name="phone" class="form-control" placeholder="전화번호를 입력하세요"></td>
		</tr>
	</table>
	<button type="button" class= "btn btn-outline-info btn sm" onclick="searchMemPw();">검색</button>

	</section>
	
	<script>
		function searchMemPw(){
			
			var id = document.getElementById("id").value;
			var name = document.getElementById("name").value;
			var phone = document.getElementById("phone").value;
			if(id =="" && name == "" && phone ==""){
				alert("모든 정보를 입력 해주세요.")
				return;
			}
			
			var url="<%=request.getContextPath()%>/searchMemPw.me"; //서블릿 요청
			
			var title="searchMemPw";
			
			var status= "left=500px, top=100px, width=300px, height=200px, menubar-no, status=no, scrollbar=yes";
			
			var popup = window.open("",title,status); //빈 창 오픈
			
			searchFrm.id.value=id;
			searchFrm.name.value=name;
			searchFrm.phone.value=phone;
			
			searchFrm.target = title; //popup창과 form 태그를 연결
			
			//action, method 설정 후 form태그 submit
			searchFrm.action = "<%= request.getContextPath() %>/searchMemPw.me";
			searchFrm.method = "post";
			
			searchFrm.submit();
			
		}
	</script>


</body>
</html>