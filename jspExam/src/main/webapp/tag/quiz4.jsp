<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz1</title>
</head>
<body>

	<%-- abs(절대값) 함수를 만들고 호출하여 결과를 출력하세요. --%>

	<%!
		public int abs(int data){
			if (data<0)
				data *= -1;
			return data;
		}
	%>
	
	<%
	    int data = -10;
	    int absData = abs(data);
	%>
	data = <%=data %><br>
	data의 절대값 :  <%=absData %><br>

</body>
</html>