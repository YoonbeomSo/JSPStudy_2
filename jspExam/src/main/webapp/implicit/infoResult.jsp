<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
		request.setCharacterEncoding("utf-8"); 
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String mySelf = request.getParameter("myself");
	%>
   	<p>입력한 정보는 아래와 같습니다.</p>
    ID: <%=id%><br><br>
    Password: <%=pw%><br><br>
    자기소개: <%=mySelf%>
   