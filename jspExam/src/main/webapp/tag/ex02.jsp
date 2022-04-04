<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02</title>
</head>
<body>
	<h2>자바 명령어로 덧셈 연산</h2>
	<%
		int data1 = 10;
		int data2 = 20;
		int result = data1 + data2;
	%>
	<h2><%= data1 + "+" + data2 + "=" + result %></h2>
</body>
</html>