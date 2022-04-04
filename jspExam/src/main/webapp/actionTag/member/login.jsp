<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<script src="check.js"></script>
</head>
<body>
	<jsp:include page="../default/header.jsp"/>
	<div align="center">
		<h1>로그인 페이지</h1>
			<form action="loginService.jsp" method="post" id="f">
			<table>
				<tr>
					<td>
						<input type="text" name="id" placeholder="아이디" id="id">
					</td>
					<td rowspan="2" >
						<input type="button" value="로그인" onclick="allCheck()" style="height:50px;">
					</td>
				</tr>
				<tr><td>
						<input type="password" name="pwd1" placeholder="비밀번호" id="pwd1">
				</td></tr>
			</table>
			</form>
	</div>
	<jsp:include page="../default/footer.jsp"/>
</body>
</html>