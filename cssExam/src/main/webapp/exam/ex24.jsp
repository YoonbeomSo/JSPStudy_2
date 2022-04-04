<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex24</title>
<style>
	td, th {border: 1px solid black;}
	#tb1
	{
		width: 250px;
		border: 5px solid red;
		table-layout: fixed;
		border-spacing: 10px; <%--각 행과 열의 간격 조절 --%>
	}
</style>
</head>
<body>
	<table id="tb1">
		<tr>
			<th>table border-collapse auto </th>
			<td>collapse</td>
		</tr>
				<tr>
			<th>table border-collapse auto </th>
			<td>collapse</td>
		</tr>
				<tr>
			<th>table border-collapse auto </th>
			<td>collapse</td>
		</tr>
	</table>
</body>
</html>