<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04</title>
</head>
<body>
	<%
		//String location = "researchForm.jsp";
		String location = "http://www.google.com";
		response.sendRedirect(location);
	%>
</body>
</html>