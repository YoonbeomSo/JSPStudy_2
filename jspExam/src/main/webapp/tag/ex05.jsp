<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04</title>
</head>
<body>
	<%
		boolean b = true;
		if(b == false){
			out.print("<h2> 로그인 성공 </h2>");
		}else{
	%>
		<h2>로그인 실패</h2>
	<%
		}
	%>
</body>
</html>