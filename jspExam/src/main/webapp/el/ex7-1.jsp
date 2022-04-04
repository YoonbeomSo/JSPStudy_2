<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("name", "pageContext"); 
	request.setAttribute("name", "request"); 
	session.setAttribute("name", "session"); 
	application.setAttribute("name", "application");
%>
	name : ${name }<br>
	pageContext : ${pageScope.name} <br>
	request : ${requestScope.name} <br>
	session : ${sessionScope.name} <br>
	application : ${applicationScope.name} <br>
	<a href="ex7-2.jsp">이동</a>
