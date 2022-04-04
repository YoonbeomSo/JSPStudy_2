<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function reset(){
		document.getElementById('id').value="";
		document.getElementById('pw').value="";
		document.getElementById('textarea').value="";
	}
</script>
</head>
<body>
	<form action="infoResult.jsp" method="post"> 
		ID:<input type="text" name="id" id="name"><br>
		Password:<input type="password" name="pw" id="pw"><br>
		자기소개<br>
		<textarea  style="overflow-y:scroll" cols="50" rows="5" name="myself" id="textarea"></textarea><br>
		<input type="submit" value="로그인">
		<input type="button" value="초기화" onclick="reset()"><br>
	</form>
</body>
</html>