<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex13</title>
<style type="text/css">
	body{
		margin: 0px; /* 외부 여백, 보더와 요소 간격*/
		padding:0px; /* 내부 여백, 요소간 간격*/
	}
	
	#wrap{
		width: 80%;
		height: 300px;
		border: 1px solid;
		margin: auto;
		background: #EAEAEA
	}
	
	.box1, .box2, .box3{
		width: 400px; height: 200px;
		margin: 10px; padding: 10px;
		border: 1px solid;
		float: left;
	}
	.box1{background: #7CB5BE;}
	.box2{background: #005000;}
	.box3{background: #EBE8FF;}
	.box1 img, .box2 img, .box3 img{float: left;} /*float: 블록 레이아웃*/
	.box1 h3, .box2 h3, .box3 h3{ text-align: center; height: 60px; line-height: 40px;} /*line-height: 줄간격*/
	.box1 p, .box2 p, .box3 p{width: 250px; margin-left: 30px;}
</style>
</head>
<body>
	<div id="wrap">
		<div class="box1">
			<img src="images/icon1.png">
			<h3>지구 사랑 </h3>
			<p>우리 회사는 지구의 환경을 위해 탄소배출을 2030년까지 제로배출을 약속합니다.</p>
		</div>
		<div class="box2">
			<img src="images/icon2.png">
			<h3>방화벽 </h3>
			<p>우리 회사는 사이버 위협으로부터 보호하기 위한 방화벽 제품을 개발합니다.</p>
		</div>
		<div class="box3">
			<img src="images/icon3.png">
			<h3>앱 스토어 </h3>
			<p>앱스토어에 방문하셔서 우리가 만든 어플에 대한 업데이트 및 최신 프로그램을 경험 할 수 있습니다.</p>
		</div>
	</div>
</body>
</html>