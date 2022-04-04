<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex4_loginChk</title>
</head>
<body>
<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String remember = request.getParameter("remember");
if(id.equals("admin") && pw.equals("1234")){
	if(remember != null && remember.equals("true")){
		Cookie idCookie = new Cookie("id", "admin");
		idCookie.setMaxAge(60*60*24);
		response.addCookie(idCookie);
	}else{
		Cookie idCookie = new Cookie("id", "admin");
		idCookie.setMaxAge(0);
		response.addCookie(idCookie);
	}
}
response.sendRedirect("ex4_login.jsp");
%>
</body>
</html>