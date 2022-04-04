<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex2</title>
</head>
<body>
	<c:set var="data" value="JSTL TEST" />
	data 변수 데이터 : <c:out value="${data }" /><br>
	
	<c:set var="data2">
		value 속성으로도 변수에 데이터를 입력 할 수 있고, 지금과 같이 태그 사이에 입력도 가능하다.
	</c:set>
	data2 변수 데이터 : <c:out value="${data2} " /><br>
	data2 변수 데이터 : ${data2} <br>
</body>
</html>