<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01</title>
</head>
<body>
	<%--
		<%@ (지시자, 지시어(directive)) : JSP 페이지 환경 설정 정보를 담는 영역
		<% (스크립트릿(scriptlet)) : 자바 코드 영역(메소드 영역)
		<%! (선언문 (declaration)) : 자바 코드 영역(클래스 영역)
		<%= (표현식 (expression)) : 출력 문장을 담는 영역
	--%>
	
	<%
		int data = 100;
		System.out.println(data);
		out.print("<h1> " + data + "</h1>");
	%>
	
	<%="<br><h1>" + data + "</h1>" %>
</body>
</html>