<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
			<li><a href="/jspExam/jstl/member/index.jsp">HOME</a></li>
			<li><a href="/jspExam/jstl/member/register.jsp">Register</a></li>
			<c:if test="${'admin' == sessionScope.id }">
				<li><a href="/jspExam/jstl/member/memberInfo.jsp">MemberInfo</a></li>
			</c:if>
			<c:choose>
				<c:when test="${empty sessionScope.id }">
					<li><a href="/jspExam/jstl/member/login.jsp">Login</a></li>
				</c:when>
				<c:otherwise>
					<li><a href="/jspExam/jstl/member/logout.jsp">Logout</a></li>
				</c:otherwise>
			</c:choose>
		</ul>
		
		<hr>
	</div>
</body>
</html>