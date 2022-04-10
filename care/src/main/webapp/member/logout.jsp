<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");
	if(id == null || id == ""){
		out.print("<script>alert('로그인 후 사용할 수 있습니다.'); location.href='login.jsp';</script>");
		return;
	}
%>   

<%
	session.invalidate();
%>
<script>alert('로그 아웃'); location.href='../index.jsp';</script>