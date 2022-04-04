<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = "admin";
	String pw = "1234";
	String name = "홍길동";
	
	if(id.equals(request.getParameter("id")) && pw.equals(request.getParameter("pw"))){
		session.setAttribute("name", name);
		response.sendRedirect("ex3_main.jsp");
	}else{
		response.sendRedirect("ex3_login.jsp");
	}
%>