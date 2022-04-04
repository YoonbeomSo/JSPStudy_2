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
		String numStr = request.getParameter("number");
		
		int number= Integer.parseInt(numStr);
		int sum =0;
	%>
	<h1>계산 결과</h1>
	<%
		for(int i=1; i<=number; i++){
			sum += i;
			if(i==number){
				out.print(i + "=" + sum );
				break;
			}
			out.print(i + "+" );

		}
	%>
</body>
</html>