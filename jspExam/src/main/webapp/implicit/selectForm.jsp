<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>selectForm</title>
</head>
<body>
	<form action="selectResult.jsp" method="post">
		<table>
			<tr>
				<td>학력</td>
				<td><select name="educ">
						<option>재학생</option>
						<option>휴학생</option>
						<option>졸업생</option>
				</select></td>
			</tr>
			<tr>
				<td>소속 국가</td>
				<td><select name="cont[]" multiple="multiple" size="4">
						<option>대한민국</option>
						<option>미국</option>
						<option>일본</option>
						<option>영국</option>
				</select></td>
			</tr>
			<tr>
				<td>관심 분야</td>
				<td><select name="inte[]" multiple="multiple" size="4">
						<option>컨설팅</option>
						<option>프로듀서</option>
						<option>프로그래머</option>
						<option>서버관리자</option>
				</select></td>
			</tr>
		</table>
		<br> 
		<input type="submit" value="로그인"> 
		<input type="button" value="초기화">
	</form>
</body>
</html>