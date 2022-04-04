<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex3_beans</title>
</head>
<body>
<%-- 	<%
		String data = request.getParameter("data");
	%>
	데이터 : <%=data %> 
--%>

<!-- Data obj = new Data(); -->
<jsp:useBean id="obj" class="actionTag.Data"/>

<!-- obj.setData(request.getParameter("data")); -->
<jsp:setProperty name="obj" property="data" />

<!-- obj.getData(); -->
데이터 : <jsp:getProperty property="data" name="obj"/>
</body>
</html>