<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex15</title>
<script>
	function display() {
		name = document.getElementById('name').value
		document.getElementById('name').value = ""
		document.getElementById('h1_id').innerHTML = name
		document.getElementById('label_id').innerHTML = name
	}
</script>
</head>
<body>

	name :
	<input type="text" id="name">
	<br>
	<h1 id="h1_id">텍스트 값</h1>
	<label id="label_id">텍스트 값</label>
	<br>
	<input type="button" value="버튼" onClick="display()">
</body>
</html>