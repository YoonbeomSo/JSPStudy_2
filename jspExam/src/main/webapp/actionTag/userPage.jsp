<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userPage</title>
</head>
<body>
	<h3>사용자로 로그인 성공</h3>
	<%request.setCharacterEncoding("utf-8"); %>
	아이디 : <%=request.getParameter("id") %><br>
	비밀번호 : <%=request.getParameter("pw") %><br>
	사용자 : <%=request.getParameter("user") %><br>
	이름 : <%=request.getParameter("name") %><br>
	<a href="login.jsp">이전</a>
</body>
</html>