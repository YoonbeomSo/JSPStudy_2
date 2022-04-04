<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	Cookie coo = new Cookie("cookieName", "cookieValue");
	coo.setMaxAge(30);// 30초, 60*60*24
	response.addCookie(coo);
%>
<script>window.close()</script>