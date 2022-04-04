<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz1_register</title>
<script>
	function myClick() {
		id = document.getElementById("id").value;
		pw1 = document.getElementById("password1").value;
		pw2 = document.getElementById("password2").value;
		name = document.getElementById("name").value;
		
		if (!id){
			alert("아이디는 필수 사항입니다.");
			document.getElementById("id").focus();
		}else if(!pw1){
			alert("비밀번호는 필수 사항입니다.");
			document.getElementById("password1").focus();
		}else if(!pw2){
			alert("비밀번호 확인은 필수 사항입니다.");
			document.getElementById("password2").focus();
		}else{
			document.getElemnetById('f').action="quiz1_success.jsp";
			document.getElemnetById('f').submit();
		}
	}
	
	
	function pwchk() {
		pw1 = document.getElementById("password1").value;
		pw2 = document.getElementById("password2").value;
		if(pw1 != pw2){
			document.getElementById('check').innerHTML = "불일치!!";
			document.getElementById('password1').value = "";
			document.getElementById('password2').value = "";
			document.getElementById("password1").focus();
		}else {
			document.getElementById('check').innerHTML = "확인!!";
		}
	}
	
</script>
</head>
<body>
	<form id='f'>
		<input type="text" id="id" placeholder="아이디">
		<font color="red">(*필수항목)</font></label><br>
		<input type="password" id="password1" placeholder="비밀번호">
		<font color="red">(*필수항목)</font><br>
		<input type="password" id="password2" placeholder="비밀번호 확인" onchange="pwchk()">
		<label id="check"></label><br>
		<input type="text" id="name" placeholder="이름"><br>
		<input type="button" value="등록" onclick="myClick()">
	</form>
</body>
</html>