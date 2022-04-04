<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex4</title>
</head>
<body>
	<%
		String data[] = {"김변수", "이상수", "박참조", "조객체"};
	%>
	<c:set var="names" value="<%=data %>"/>
	
	<c:forEach var="name" items="${names }">
		${name }<br>
	</c:forEach>
	<br>
	<c:forEach var="i" begin="0" end="3" step="1">
		${names[i]}<br>
	</c:forEach>
</body>
</html>