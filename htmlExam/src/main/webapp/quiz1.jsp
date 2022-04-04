<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz1</title>
<style type="text/css">
	body{
		margin: 0px;
		padding: 0px;
	}

	#logo, #nav, #article{
		width: 1000px;
		margin: auto;
	}
	
	#logo{
		background: #86E57F;
		height: 200px;
		text-align: center;
		line-height: 200px
	}
	#nav{
		background: orange;
		height: 60px;
	}
	#article{	
		background: #D1B2FF;
		height: 500px;
		margin: auto;
	}
	
	.menu{
		float: left;
		width: 105px;
		height: 35px;
		border: 1px solid;
		text-align: center;
		line-height: 30px;
		margin: 10px 10px 10px 25px;
		background : #FAED7D;
	}
		.box{
		width: 200px;
		height : 200px;
		background: #3DB7CC;
		float : left;
		margin: 25px;
		/* border : 1px solid; */
	}
	
</style>



</head>
<body>
	<div id="logo">
		<h1>CARE LAB</h1>
	</div>
	<div id="nav">
		<div class="menu">Home</div>
		<div class="menu">Login</div>
		<div class="menu">Membership</div>
		<div class="menu">Record</div>
		<div class="menu">Free</div>
		<div class="menu">Q&A</div>
		<div class="menu">Download</div>
	</div>
	<div id="article">
		<div class="box"></div>
		<div class="box"></div>
		<div class="box"></div>
		<div class="box"></div>
		<div class="box"></div>
		<div class="box"></div>
		<div class="box"></div>
		<div class="box"></div>
	</div>
</body>
</html>