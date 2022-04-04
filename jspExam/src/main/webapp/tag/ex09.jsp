<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04</title>
</head>
<body>
	<%! int data1; //선언문 안에 변수는 초기값 0을 갖고 시작한다. %>
	<% int data2 = 10; %>
	
	<h3>data1 : <%=data1 %></h3>
	<h3>data2 : <%=data2 %></h3>
</body>
</html>