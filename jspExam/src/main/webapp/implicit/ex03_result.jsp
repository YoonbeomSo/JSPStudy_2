<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <% request.setCharacterEncoding("utf-8"); %><%--post방식에서는 incoding을 다시 설치해줘야한다. --%>
    이름: <%=request.getParameter("name")%><br>
    주소: <%=request.getParameter("address")%><br>
    취미: <%=request.getParameter("like")%><br>
    <%
    	String[] args = request.getParameterValues("like");
    %>
    취미: <%=Arrays.toString(args)%>
   