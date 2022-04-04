<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex2_login</title>
</head>
<body>
	<%
		String id="";
		if(session.getAttribute("idName") != null){
			id = (String)session.getAttribute("idName");
		}
	%>
	
	
	<form action="ex2_loginChk.jsp" method="post">
		<input type="text" name="id" id="id" placeholder="아이디" value=<%=id %>><br>
		<input type="password" name="pw" placeholder="비밀번호"><br>
		<% if(id == ""){ %>
			<input type="checkbox" name="remember" value="true"> 아이디 저장<br>
		<%}else{ %>
			<input type="checkbox" name="remember" value="true" checked="checked"> 아이디 저장<br>
		<%} %>
		<input type="submit" value="전송">
		<input type="reset" >
	</form>
</body>
</html>