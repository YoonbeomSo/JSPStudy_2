<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex20</title>
<script>

	function mouse_over(obj){
		obj.innerHTML = "Mouse Over";
	}
	function mouse_out(obj){
		obj.innerHTML = "Mouse Out";
	}
</script>
</head>
<body>
	<div onmouseover="mouse_over(this)" onmouseout="mouse_out(this)">
		Mouse Over Out
	</div>
</body>
</html>