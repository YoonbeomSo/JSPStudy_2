<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex6_form</title>
</head>
<body>
	<h3>JSTL/EL</h3>
	<form action="ex6_result.jsp">
		<input type="text" name="id" placeholder="아이디"> <br>
		<input type="password" name="pw" placeholder="비밀번호"> <br>
		<input type="text" name="name" placeholder="이름"> <br>
		<input type="text" name="email" placeholder="이메일"> <br>
		<input type="submit" value="전송">
	</form>
</body>
</html>