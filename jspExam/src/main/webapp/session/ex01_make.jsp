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
	/*
	세션에 데이터를 저장할 때 사용하는 메서드
	session.setAttribute(이름,데이터);
	*/
	session.setAttribute("id","test");
	session.setAttribute("hobbys",new String[]{"멍때리기","독서"});
	
	/*
	세션의 유효시간 설정 메소드(기본 세션 유효시간 : 1800초(30분))
	session.setMaxInactiveInterval(초)
	*/
	session.setMaxInactiveInterval(1800);
	%>
</body>
</html>