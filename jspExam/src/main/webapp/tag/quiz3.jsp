<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz1</title>
</head>
<body>

	<%-- add, sub 메소드 만들고 호출하여 결과를 출력하세요. --%>

	<%!
		int c = 0;
		public int add(int a, int b){
			c = a + b;
			return c;
		}
		
		public int sub(int a, int b){
			c = a - b;
			return c;
		}
	%>
	
	<%
	    int data1 = 10;
	    int data2 = 5;
	
	    int add1 = add(data1, data2);
	    int sub1 = sub(data1, data2);
	%>
	data1 = <%=data1 %><br>
	data2 = <%=data2 %><br><br>
	data1 + data2 = <%=add1 %><br>
	data2 - data1 = <%=sub1 %><br>

</body>
</html>