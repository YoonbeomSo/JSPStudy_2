<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="researchResult.jsp" method="post">
	<div>
		이름: <input type="text" name="name"><br><br>
		소개: <textarea name="content" style="width: 100px; height:50px;"
			placeholder="살골짜기에 살고있는 도적입니다용"></textarea>
	</div>
	<div style="width: 400px">
		<fieldset>
			<legend >연령 조사</legend>
			<label>10대</label> <input name="age" type="radio" value="10대" >
			<label>20대</label> <input name="age" type="radio" value="20대" checked>
			<label>30대</label> <input name="age" type="radio" value="30대">
			<label>40대</label> <input name="age" type="radio" value="40대">
		</fieldset>
		<fieldset>
			<legend>취미 조사</legend>
				<label>책 읽기</label><input type="checkbox" name="hobby" value="책 읽기">
				<label>춤추기</label><input type="checkbox" name="hobby" value="춤추기">
				<label>멍때리기</label><input type="checkbox" name="hobby" value="멍때리기">
		</fieldset>
	</div>
	<input type="submit" value="전송">
	</form>
</body>
</html>