<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex2_make</title>
</head>
<body>
	<%
		Cookie coo = new Cookie("cookieName", "cookieValue");
		coo.setMaxAge(30);// 30초, 60*60*24
		response.addCookie(coo);
	%>
	<a href="ex2_index.jsp">인덱스</a>
</body>
</html>