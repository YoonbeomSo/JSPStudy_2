<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
		request.setCharacterEncoding("utf-8"); 
		String name = request.getParameter("name");
		String content = request.getParameter("content");
		String age = request.getParameter("age");
		String[] hobbys = request.getParameterValues("hobby");
	%>
	<h1>설문 조사 결과</h1>
	
	이름 : <%=name%><br>
	소개 : <%=content%><br>
	나이 : <%=age%><br>
	취미 : 
	<%
	if(hobbys != null){
		for(String i:hobbys){
			out.print(i+" ");
		}
	}
	%>