<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz1</title>
</head>
<body>
	<%
		int sum=0;
		int even=0;
		int odd=0;
		for(int i=1; i<101; i++){
			sum+=i;
			if(i%2==1)
				odd+=i;
			else 
				even+=i;
			if(i<4)
				out.print(i+" + ");
			if(i==100){
				out.println(".... + "+i+" = "+sum+"<br>");
	%>
				1~100 까지의 짝수의 합 : <%=even %><br>
				1~100 까지의 홀수의 합 : <%=odd %>
			<%}%>
		<%}%>
	
	

</body>
</html>