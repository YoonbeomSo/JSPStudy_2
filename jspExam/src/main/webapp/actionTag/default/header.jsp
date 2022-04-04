<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<style type="text/css">
	a {text-decoration: none; color:black;}
	ul {padding: 20px;}
	ul li {display: inline; padding: 15px;}
</style>
</head>
<body>
	<div align="center">
		<h1>CARE LAB</h1>
	</div>
	
	<div >
		<hr>
		<ul>
			<li><a href="/jspExam/actionTag/member/index.jsp">HOME</a></li>
			<li><a href="/jspExam/actionTag/member/register.jsp">Register</a></li>
			<% 
			String id = (String)session.getAttribute("id");
			if("admin".equals(id)) {
			%>
			<li><a href="/jspExam/actionTag/member/memberInfo.jsp">MemberInfo</a></li> 
			<%} %>
		<%if(session.getAttribute("id")!=null){ %>
			<li><a href="/jspExam/actionTag/member/logout.jsp">Logout</a></li>
		<%}else{ %>
			<li><a href="/jspExam/actionTag/member/login.jsp">Login</a></li>
		<%} %>
		</ul>
		
		<hr>
	</div>
</body>
</html>