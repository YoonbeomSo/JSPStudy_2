<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz5</title>
</head>
<body>
	<form action="quiz6.jsp">
		<table align="center">
			<tr>
				<td colspan=2>
					다음 <span><b>내용에 맞게 입력</b></span>하시오.<br>
					전공 분야를 입력하세요.
					<select size=1 name="sel">
						<option value="p1" selected>소프트웨어</option>
						<option value="p2" >데이터베이스</option>
						<option value="p3" >네트워크</option>
						<option value="p4" >자료구조</option>
					</select>
				</td>
				<td rowspan=4>
					<img src="images/test.jpg" width="200" height="150">
				</td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" maxlength="10"></td>
			</tr>
			<tr>
				<td colspan=3>
					<fieldset>
						<legend>성별 조사</legend>
						<label>여성</label> <input type="radio" name="gender" checked>
						<label>남성</label> <input type="radio" name="gender">	
					</fieldset>
				</td>
			</tr>
			<tr>
				<td colspan=3>
					<fieldset>
						<legend>취미 조사</legend>
							<label>책 읽기</label><input type="checkbox" >
							<label>공부하기</label><input type="checkbox">
							<label>책 읽으며 공부하기</label><input type="checkbox">
							<label>컴퓨터</label><input type="checkbox">
					</fieldset>
				</td>
			</tr>
			<tr>
				<td colspan=3>
					<fieldset>
		   				<legend>하고 싶은 말</legend>
						<textarea name="txtarea" rows=3 cols=60></textarea>
					</fieldset>
				</td>
			</tr>
			<tr>
				<td>
					<input type="button" value="완료">
					<input type="button" value="다시 작성">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>