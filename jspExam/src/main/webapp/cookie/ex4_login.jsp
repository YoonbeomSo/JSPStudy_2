<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex4_login</title>
</head>
<body>
<%
/*
0. ex4_login -> ex4_loginChk

1. 체크박스를 클릭하고 로그인 시 ID/PW가 일치하면 
   ex4_login.jsp 에서 아이디의 값을 출력해주세요.

2. 체크박스를 클릭하고 로그인 시 ID/PW가 틀리면 
   ex4_login.jsp 에서 아이디의 값을 출력하지 않아요.

3. 체크박스를 클릭하지 않고 로그인 성공/실패 두 경우 모두 
	ex4_login.jsp 에서 아이디의 값을 출력하지 않아요.
*/
Cookie[] cookies = request.getCookies();
String id = "";
if(cookies != null){
	for(Cookie c : cookies){
		if(c.getName().equals("id"))
			id = c.getValue();
	}
}

%>
<form action="ex4_loginChk.jsp" method="post">
		<input type="text" name="id" placeholder="아이디" value=<%=id %>><br>
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