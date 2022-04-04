<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex25</title>
<style>
	td, th {border: 1px solid black;}
	#tb1
	{
		width: 300px;
		border: 1px solid blue;
		empty-cells: hide;
	}
	#tb2
	{
		width: 300px;
		border: 1px solid red;
		caption-side: bottom;
	}
	#th2 caption(font-size:12px;)
</style>
</head>
<body>
	<table id="tb1">
		<tr>
			<caption>대한민국 대학</caption>
			<th>학교</th>
			<th>이름</th>
			<th>국가</th>
		</tr>
		<tr>
			<td>한국대</td>
			<td>한국인</td>
			<td>대한민국</td>
		</tr>
		<tr>
			<td>대한대</td>
			<td>대한인</td>
			<td></td>
		</tr>
	</table>
	<br><br>
		<table id="tb2">
		<tr>
			<caption>대한민국 대학</caption>
			<th>학교</th>
			<th>이름</th>
			<th>국가</th>
		</tr>
		<tr>
			<td>한국대</td>
			<td>한국인</td>
			<td>대한민국</td>
		</tr>
		<tr>
			<td>대한대</td>
			<td>대한인</td>
			<td></td>
		</tr>
	</table>
</body>
</html>