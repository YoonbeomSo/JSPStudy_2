<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex13</title>
</head>
<body>
	<script>
		function add(x, y, z) {
			var total;
			if (y === undefined && z === undefined) {
				total = x;
			} else if (z === undefined) {
				total = x + y;
			} else {
				total = x + y + z;
			}
			return total;
		}

		document.write(add(2) + "<br>");
		document.write(add(2, 3) + "<br>");
		document.write(add(2, 4, 6) + "<br>");
		document.write(add(2, 4, 6, 7) + "<br>");
	</script>
</body>
</html>