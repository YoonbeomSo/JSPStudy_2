<%@page import="java.text.DecimalFormat"%>
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
		String name = request.getParameter("name");
		String cmStr = request.getParameter("cm");
		String kgStr = request.getParameter("kg");
		Double cm = Double.parseDouble(cmStr);
		Double kg = Double.parseDouble(kgStr);
		
		Double standard = (cm-100) * 0.9;
		Double obesity = kg / standard * 100;
		String level;
		if(obesity<100){
			level="저체중";
		}else if(obesity<110){
			level="정상";
		}else if(obesity<120){
			level="과체중";
		}else if(obesity<130){
			level="비만";
		}else {
			level="고도비만";
		}
		String pattern = "#.##";
		DecimalFormat decimalFormat =  new DecimalFormat(pattern);
		String formattedDouble = decimalFormat.format(obesity);
		
		out.print(name+"님의 비만도는 "+ formattedDouble +"%로 "+level+" 입니다.");
	%>
</body>
</html>