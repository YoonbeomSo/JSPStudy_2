<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8"); 
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String user = request.getParameter("user");
	
	if(user.equals("user")){
%>	
	<jsp:forward page="userPage.jsp">
		<jsp:param value="사용자" name="name" />
	</jsp:forward>
<%	
	}else{
%>
	<jsp:forward page="adminPage.jsp" >
		<jsp:param value="관리자" name="name"/>
	</jsp:forward>
<%}%>