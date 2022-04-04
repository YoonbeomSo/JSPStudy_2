<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex11</title>
</head>
<body>
	<script>
		var text1 = 1234;
		var text2 = "함수 선언 후 호출";
		printMsg(text1); // 함수 선언 전 호출

		function printMsg(msg) { // 함수 선언
			document.write("함수 호출 메시지 : " + msg + "<br>");
		}

		printMsg(text2); // 함수 선언 후 호출
	</script>
</body>
</html>