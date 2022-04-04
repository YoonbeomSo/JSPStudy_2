<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CARE LAB</title>
<style type="text/css">
	body{background:grey; padding:0; margin:0;}
	#wrap{width:700px;  height: 750px; background:white; margin:0 auto; overflow: auto;}
	header{width:100%;}
	header h4{text-align: right; margin:0 5px 0 0;}
	header h2{color: orange; margin-left:20px;}
	nav{text-align: right; margin-right:20px;}
	nav a{color:black; text-decoration: none;}
	.mainimg{width:103%; object-fit:fill;}
	article{width:150px; float: left;}
	article ul{list-style:none; width:100%; padding:40px;} 
	article ul li a{ color:grey; text-decoration: none;}
	article ul hr{border-style:dotted;}
	.mark{float:right; margin-top:5px;}
	
	
	aside{display: inline;}
	aside h3{margin-left:230px;}
	#login_box{margin: 40px 0px 0px 250px;}
	.idpwtxt{width:120px;}
	.idpw{margin-left:50px; background: skyblue;}
	.button1, .button2{width: 140px; height:30px; margin: 30px 0px 0px 10px; }
	.button1{color:white;  background: linear-gradient( to top, orange 50%, white 100%); border:none;}
	.button2{color:white;  background: linear-gradient( to top, skyblue 50%, white 100%); border:none;}
	footer {width:100%; float: bottom; overflow:auto;}
	footer font { margin-left:50px;}
	footer img{float:right; margin-right:10px;}
</style>
<script>
	function loginClick(){
		id = document.getElementById("id").value;
		pw = document.getElementById("pw").value;
		
		if(!id){
			alert("아이디는 필수 사항입니다.");
			document.getElementById("id").focus();
		}else if(!pw){
			alert("비밀번호는 필수 사항입니다.");
			document.getElementById("pw").focus();
		}else{
			document.getElementById('f').action="";
			document.getElementById('f').submit();
			alert("로그인 완료")
		}
	}
	function cancelClick(){
		document.getElementById("id").value="";
		document.getElementById("pw").value="";
		document.getElementById("id").focus();
	}
	
	
</script>
</head>
<body>
	<form id='f'>
		<div id="wrap">
			<header>
				<h4>Login Membership</h4>
				<h2>CARE LAB</h2>
			</header>
			<nav>
				<a href="#">HOME</a>&nbsp;
				<a href="#">COMPANY</a>&nbsp;
				<a href="#">SOLUTIONS</a>&nbsp;
				<a href="#">CUSTOMER</a>&nbsp;
				<a href="#">CENTER</a>&nbsp;
			</nav>
			<br>
			<nav>
				<img class="mainimg" src="../images/member/sub_back.png">
			</nav>
			<article>
				<ul>
					<li><a href="#"> 회원 가입</a><img class="mark" src="../images/company/h_bullet.gif"></li>
					<hr>
					<li><a href="#"> 회원 수정</a><img class="mark" src="../images/company/h_bullet.gif"></li>
					<hr>
					<li><a href="#"> 회원 탈퇴</a><img class="mark" src="../images/company/h_bullet.gif"></li> 
					<hr>
					<li><a href="#"> 로그인</a><img class="mark" src="../images/company/h_bullet.gif"></li> 
					<hr>
					<li><a href="#"> 로그아웃</a><img class="mark" src="../images/company/h_bullet.gif"></li> 
					<hr>
				</ul>
			</article>
			<aside>
				<h3>로그인</h3>
				<div id="login_box">
					<div class="idpw_box">
					<table>
						<tr>
							<td class="idpwtxt">아이디</td>
							<td><input class="idpw" type="text" id="id" size="16"></td>
						</tr>
						<tr>
							<td class="idpwtxt">비밀번호</td>
							<td><input class="idpw" type="password" id="pw" size="16"> </td>
						</tr>
					</table>
					</div>
					<div>
						<input class="button1" type="button" value="로그인" onclick="loginClick()" >&nbsp;
						<input class="button2" type="button" value="취소" onclick="cancelClick()" >
					</div>
				</div>
			</aside>
			<footer>
				<hr>
				<font size="1px">Copyright 2021 kyes inc. 
				all right reserved contact mail : kyes0222@gmail.com 
				Tel: +82 010-6315-6980</font>
				<img src="../images/twitter.gif">
				<img src="../images/facebook.gif">
			</footer>
		</div>
	</form>

</body>
</html>