<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex21</title>
</head>
<body>
	이름 : <%=request.getParameter("name") %><br>
	주소 : <%=request.getParameter("address") %>
</body>
</html>