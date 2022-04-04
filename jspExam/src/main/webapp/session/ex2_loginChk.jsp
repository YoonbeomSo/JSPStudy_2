<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex2_loginChk</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String remember = request.getParameter("remember");
	
	if(id.equals("admin") && pw.equals("1234")){
		if(remember != null && remember.equals("true")){
			session.setAttribute("idName", id);
		}else{
			session.invalidate();
		}
	}else{
		session.invalidate();
	}
	response.sendRedirect("ex2_login.jsp");
%>
</body>
</html>