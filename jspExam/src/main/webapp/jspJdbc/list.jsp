
<%@page import="jspJdbc.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="jspJdbc.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
</head>
<body>
	<%
		MemberDAO dao = new MemberDAO();
		ArrayList<MemberDTO> list = dao.selectAll();
		int count = 0;
		if(list.isEmpty() == false){
	%>
		<table border=1>
			<tr>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>이름</th>
				<th>이메일</th>
			</tr>
			<% for(MemberDTO m : list){
				count++;
			%>
			<tr>
				<td><%=m.getId() %></td>
				<td><%=m.getPw() %></td>
				<td><%=m.getName() %></td>
				<td><%=m.getEmail() %></td>
			</tr>
			<%} %>
		</table>
	<%	} %>
total record : <%=count %><br>
<a href="index.jsp" style="text-decoration: none">클릭하면 인덱스 페이지로 이동합니다.</a>
</body>
</html>