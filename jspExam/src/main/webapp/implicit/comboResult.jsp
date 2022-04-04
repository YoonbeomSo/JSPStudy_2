<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8"); 
		String gnd = request.getParameter("gnd");
		
		String location;
		if(gnd.equals("구글")){
			location = "http://www.google.com";
		}else if(gnd.equals("네이버")){
			location = "http://www.naver.com";
		}else{
			location = "http://www.daum.net";
		}
		response.sendRedirect(location);
	%>
</body>
</html>