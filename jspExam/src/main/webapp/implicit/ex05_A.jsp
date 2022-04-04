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
		String data = "test";
		pageContext.setAttribute("id", data);
		request.setAttribute("id", data);
		session.setAttribute("id", data);
		application.setAttribute("id",data);
		
		request.getRequestDispatcher("ex05_B.jsp").forward(request,response);
	%>
</body>
</html>