<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
		request.setCharacterEncoding("utf-8"); 
		String educ = request.getParameter("educ");
		String[] cont = request.getParameterValues("cont[]");
		String[] inte = request.getParameterValues("inte[]");
	%>
   	<p>입력한 정보는 아래와 같습니다.</p>
    학력: <%=educ%>
    소속국가: 
    <%
    	for(String i:cont){
    		out.print(i+" ");
    	}
    %>
    관심 분야: 
    <%
    	for(String i:inte){
    		out.print(i+" ");
    	}
    %>