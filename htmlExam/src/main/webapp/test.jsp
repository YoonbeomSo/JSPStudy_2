<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<style type="text/css">
	#group{
		background-color: pink;
		width: 400px;
		padding: 10px;
	}
	.box{
		background-color: red;
		width: 200px;
		height: 100px;
		margin: left;
		color: white;
		line-height: 100px;
		text-align: center;
		/*position: relative;*/
	 }
	 /*
	 div.box a{
	 position: absolute;
	 left: 50%;
	 top: 50%; 
	 transform: translate(-50%,-50%);
	 }
	 */
	 div.box:hover{color: black; background-color: gray;}
</style>
<body>
	<div id="group">
		<div class="box">
		<a >Home</a>
		</div>
		<div class="box">
		<a >Profile</a>
		</div>
		<div class="box">
		<a >Board</a>
		</div>
		<div class="box">
		<a >Contact</a>
		</div>
	</div>
</body>
</html>