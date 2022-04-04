<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex33-2</title>
</head>
<body>
	<!-- http://localhost:8085/jsExam/exam/ex33-2.jsp?id=test&pw=1234 -->
 	아이디 : <%=request.getParameter("id") %>
 	비밀번호 : <%=request.getParameter("pw") %>
</body>
</html>