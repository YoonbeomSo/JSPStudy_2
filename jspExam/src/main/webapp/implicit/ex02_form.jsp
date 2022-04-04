<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01</title>
</head>
<body>
	<form action="ex02_result.jsp" method="post"> <%--get이 아닌 post방식 사용 시 -> url에 담아가지 않고, http body에 담아간다. & 데이터 양이 많거나 보완이 중요 할때 사용한다. --%>
		<input type="text" name="id"><br>
		<input type="password" name="pw"><br>
		<input type="submit" value="로그인">
		<input type="reset" value="취소"><br>
	</form>
</body>
</html>