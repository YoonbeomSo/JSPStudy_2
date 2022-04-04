<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex14</title>
<style>
       .sp {
           position: static;
           left: 30px;    /* 적용되지 않음  정적위치*/
           background-color: cyan;  width: 400px;  height: 50px;
       }
       .rp1 { position: relative;  left: 30px; top: 10px; 
       		background-color:orange; width: 400px;   height: 50px; } /*상대위치*/
       .rp2 { position: relative;  left: 60px;   top: 20px;  
              background-color: lightgreen;  width: 400px;   height: 50px;  }
</style>
</head>
<body>
	<h1>positioning style2</h1> 
	<p class="sp">정적 위치 설정 적용</p>
	<div class="rp1">상대 위치 설정 적용 - left 30px, top -10px</div>
	<p class="rp2">상대 위치 설정 적용 - left 60px, top 20px</p>
	정적 위치 : 순서에 따라 나열되는 방식. 위치 조정을 해도 적용되지 않는다<br>
	상대 위치 : 현재 블록을 기준으로 위치를 선정하게 된다.
</body>
</html>