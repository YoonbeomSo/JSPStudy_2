<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex3_login</title>
</head>
<body>
<%@include file="ex3_header.jsp" %>
<%
	String name = (String)session.getAttribute("name");
	if(name == null){
%>
	<form action="ex3_loginChk.jsp" method="post">
		<input type="text" placeholder="아이디" name="id"><br>
		<input type="password" placeholder="비밀번호" name="pw"><br>
		<input type="submit" value="로그인"><br>
	</form>
<%	}else{ 
		out.print(name + "님 로그인 상태입니다.<br>");
	%>
		<input type="button" value="main 이동" onclick="location.href='ex3_main.jsp'">
<%	} %>
</body>
</html>