<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz5</title>
<style>
	*{ box-sizing: border-box; }
	div.default { width:500px; height:500px; margin:0 auto; }
	header{ border-style: solid; height:25%; text-align:center; background: red; }
	nav { background:gold;  height:20%; border-style: solid; }
	section {  width:70%; height:40%; border-style: solid; background:green; float: left;}
	aside {   width:30%;  height:40%; border-style: solid; background:skyblue; float: right;}
	footer {  border-style: solid; height:10%; background:pink; clear: both}
	h3{ text-align:center; }
	section header{ width: 70%; height: 15%; margin: 0 auto; background:gold;}
	section article{ 
		width: 70%; height: 15%; margin: 10px auto; 
		 border-style: solid; text-align:center; background:gold;	
	}
	section footer{ width: 70%; height: 15%; margin: 0 auto; text-align: center; background:gold;}
</style>
</head>
<body>
	<div class="default">
        <header><h1>&lt; header &gt;</h1></header>
        <nav>
            <h3>&lt; nav &gt;</h3>
        </nav>
        <section>
        	<h3>< section ></h3>
			<header> header </header>
			<article> article </article>
			<footer> footer </footer>
        </section>
        <aside> <h3> &lt; aside &gt; </h3></aside>
        <footer><h3>< footer ></h3></footer>
	</div>
</body>
</html>