<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz5_header</title>
<style>
	li{display :inline; margin: 0 30px;}
	header, article, footer{text-align: center}
	article{height: 400px;}
	
</style>
</head>
<body>
	<header>
		<hr>
			<ul>
				<li><a href="quiz5_sub.jsp">서브 페이지</a></li>
				<li><a href="quiz5_error.jsp">에러 페이지</a></li>
				<li><a href="quiz5_main.jsp">메인 페이지</a></li>
				<li>
					<input type="text" placeholder="검색">
					<input type="button" value="검색">
				</li>
			</ul>
		<hr>
	</header>
</body>
</html>