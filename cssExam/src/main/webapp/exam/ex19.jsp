<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex19</title>
<style>
    div { border: 3px solid blue; width:500px; margin:0 auto; }
    #wrap { overflow: auto; }
    header{  border: 3px solid pink;}
    nav { float: left; width: 170px; height:200px; border: 3px solid gold; }
    section { margin: 0 0 0 177px; width:317px; border: 3px solid red; }
    footer {  height:20px;border: 3px solid skyblue; }
	p { width: 170px;text-align : center;}
	
</style>
</head>
<body>
<div id="wrap">
	<header><h1>제 목</h1></header>
	<nav>
		<p>목차(nav)</p>
		<ul>
			<li><a href="#"> Google</a></li>
			<li><a href="#"> Apple</a></li>
			<li><a href="#"> samsung</a></li> 
		</ul>
	</nav>
	<section>
		<span>section 1</span><p>float 속성은 시맨틱 문서 구조에 유용하게 사용할 수 있습니다</p>
	</section>
	<section>
		<span>section 2</span><p>float 속성은 시맨틱 문서 구조에 유용하게 사용할 수 있습니다.</p>
	</section>
	<footer> 마지막 글 </footer>
</div>
</body>
</html>