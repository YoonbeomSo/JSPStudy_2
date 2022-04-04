<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex3_index</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		boolean check = true;
		if(cookies != null){
			for(Cookie c : cookies){
				out.print("쿠키 이름 : " + c.getName());
				out.print(" 쿠키 값 : " + c.getValue() + "<br>");
				if(c.getName().equals("cookieName"))
					check = false;
			}
		}
		if(check){
	%>
		<script>window.open('ex3_popup.jsp', '', 'width=400,height=300,top=300,left=300')</script>
	<%
		} 
	%>
</body>
</html>