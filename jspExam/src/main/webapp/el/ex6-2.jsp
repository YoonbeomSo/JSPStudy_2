<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    	String id = request.getParameter("id");
    	String pw = request.getParameter("pw");
    %>
    
	아이디 : <%=id%><br>
	비밀번호 : <%=pw%><br>
	<br>
	<!-- el을 통해 아래와 같이 간소화 가능 -->
	아이디 : ${param.id}<br>
	비밀번호 : ${param.pw}<br>