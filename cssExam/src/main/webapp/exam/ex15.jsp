<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex15</title>
	<style>
        .sp {
            position: static;
            left: 30px;    /* 적용되지 않음  정적위치*/
            background-color: cyan;  width: 400px;  height: 50px;
        }
        .rp1 { position: fixed;  right: 30px; top: 10px;
        		background-color:orange; width: 400px;   height: 50px; } 
        .rp2 { position: absolute;  right: 60px;   top: 20px;  
               background-color: lightgreen;  width: 400px;   height: 50px;  }
	</style>
</head>
<body>
	<h1>positioning style2</h1> 
	<p class="sp">정적 위치 설정 적용</p>
	<div class="rp1">고정 위치 설정 - right 30px, top -10px</div>
	<p class="rp2">절대 위치 설정 적용 - right 60px, top 20px</p>
	<p class="sp">정적 위치 설정 적용</p>
	<p class="sp">정적 위치 설정 적용</p>
	절대 위치 : 웹 문서의 흐름과 상관없이 전체 페이지를 기준으로 배치<br>
	고정 위치 : 창의 스크롤을 움직여도 사라지지 않고 고정된 위치에 그대로 있음.
</body>
</html>