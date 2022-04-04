<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String id = (String)session.getAttribute("id");
	String[] hobbys = (String[])session.getAttribute("hobbys");
	
	out.print(id+"<br>");
	out.print(Arrays.toString(hobbys) + "<br>");
	
	//세션의 유효시간 확인
	out.print("<br>세션의 유효시간<br>");
	%>
</body>
</html>