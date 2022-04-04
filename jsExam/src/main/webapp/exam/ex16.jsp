<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex16</title>
<script>
    function display(){
        document.getElementById("myImage").src = "/jsExam/images/delete.png";
    }
</script>
</head>
<body>
    <img id="myImage" src="/jsExam/images/ok.png" onclick="display()" >
</body>
</html>