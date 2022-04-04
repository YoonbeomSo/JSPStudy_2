<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete</title>
<script>
	function check(){
		pw = document.getElementById('pw');
		confirmPw = document.getElementById('confirmPw');
		
		if(pw.value == ""){
			alert('필수 항목입니다.');
			return;
		}
		
		if(pw.value != confirmPw.value){
			alert('두 비밀번호가 일치하지 않습니다.');
			return;
		}
		
		if(confirm('탈퇴하시겠습니까?'))
			document.getElementById('f').submit();
	}
</script>
</head>
<body>
<%
	String id = (String)session.getAttribute("id");
	if(id == null || id == ""){
		out.print("<script>alert('로그인 후 사용할 수 있습니다.'); location.href='login.jsp';</script>");
		return;
	}
%>
	<form action="deleteService.jsp" method="post" id="f">
		<input type="text" value='<%=id%>' disabled="disabled"><br>
		<input type="password" name="pw" id="pw" placeholder="비밀번호"><br>
		<input type="password" name="confirmPw" id="confirmPw" placeholder="비밀번호 확인"><br>
		<input type="button" value="회원 탈퇴" onclick="check();">
		<input type="button" value="취소" onclick="location.href='index.jsp'">
	</form>
</body>
</html>




