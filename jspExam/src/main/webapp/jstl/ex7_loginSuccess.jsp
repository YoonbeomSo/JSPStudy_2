<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex7_loginSuccess</title>
</head>
<body>
	<c:if test="${empty sessionScope.id }">
		<c:redirect url="ex7_login.jsp"/>
	</c:if>
	
	<h3>${sessionScope.id} 님 로그인 되었습니다.</h3>
	
</body>
</html>