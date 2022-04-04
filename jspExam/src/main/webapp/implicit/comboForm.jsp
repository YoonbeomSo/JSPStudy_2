<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>검색 엔진을 선택하세요.</h1>
	<form action="comboResult.jsp" method="post">
		<select name="gnd" size="1">
			<option>구글</option>
			<option>네이버</option>
			<option>다음</option>
		</select>
		<input type="submit" value="확인"> 
	</form>
</body>
</html>