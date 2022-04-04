<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz3</title>
<style>
	body{padding: 0; margin: 0; }
	#wrap
	{
		width : 400px;
		height: 1000px;
		background: white;
		margin: 0 auto;
	}
	h1{text-align:center; color:#47C83E;}
	input {
	  width:100%;
	  height:25px;
	  font-size:12px;
	}
	.inputSmall{	  
		width:30%;
		height:25px;
		font-size:12px;
	}
	.inputMedium{	  
		width:70%;
		height:25px;
		font-size:12px;
	}
	label{
		color:red;
		font-size:10px
	}
	.month{
		width:25%;
		height:25px;
		margin: 0 22px;
	}
	.gender{
		width:102%;
	 	height:30px;
	}
	.gPhone{
		width:102%;
	 	height:30px;
	}
	.cButton{
		background:#47C83E;
		color:white;
		width:25%;
		height:30px;
		margin-left:12px;
	}
	.jButton{
		background:#47C83E;
		color:white;
		width:103%;
		height:30px;
	}	
	.iddat{
		margin:-25px 0px 0px 300px;
		position:absolute;
	}
	.pwcheck{
		margin:-25px 0px 0px 315px;
		position:absolute;
		color:red;
	}
</style>

<script>
	function idinput(){
		id = document.getElementById("id").value;
		var pattern_eng = /[A-Z]/;// 대문자 
    	var pattern_spc = /[~!@#$%^&*()+|<>?:{}]/; // 특수문자
    	var pattern_kor = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/; // 한글체크

    	if( !(pattern_eng.test(id)) && !(pattern_spc.test(id)) && !(pattern_kor.test(id)) ){
    		if(id.length<5 || id.length >20){
    			document.getElementById('idtext').innerHTML = 
    				"5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.";
    		}else{
    			document.getElementById('idtext').innerHTML = "";
    		}
    	}else{
			document.getElementById('idtext').innerHTML = 
				"5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.";
		}	
	}
	
	function pw1input(){
		pw1 = document.getElementById("pw1").value;
		pwcheck = document.getElementById("pwcheck").value;
    	var pattern_kor = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/; // 한글체크

    	if( !(pattern_kor.test(pw1))){
    		if(pw1.length<8 || pw1.length >16){
    			document.getElementById('pw1text').innerHTML = 
    				"8~16자 영문 대 소문자,숫자,특수문자를 사용하세요.";
    			document.getElementById('pwcheck').innerHTML = 
    				"사용 불가";
    		}else{
    			document.getElementById('pw1text').innerHTML = "";
    			document.getElementById('pwcheck').innerHTML = "";
    		}
    	}else{
			document.getElementById('pw1text').innerHTML = 
				"8~16자 영문 대 소문자,숫자,특수문자를 사용하세요.";
			document.getElementById('pwcheck').innerHTML = 
				"사용 불가";
		}	
	}
	
	function pw2input(){
		pw1 = document.getElementById("pw1").value;
		pw2 = document.getElementById("pw2").value;
    	if(pw1!==pw2){
   			document.getElementById('pw2text').innerHTML = 
   				"설정하려는 비밀번호가 맞는지 확이하기 위해 다시 입력해주세요.";
    	}else{
   			document.getElementById('pw2text').innerHTML = "";
		}	
	}
	
	function yearinput(){
		year = document.getElementById("year").value;
    	if(year.length!=4){
   			document.getElementById('birthtext').innerHTML = 
   				"태어난 년도 4자리를 정확하게 입력하세요.";
   			document.getElementById("year").value="";
   			document.getElementById("year").focus();
    	}else{
   			document.getElementById('birthtext').innerHTML = "";
		}	
	}
	function dayinput(){
		day = document.getElementById("day").value;
    	if(day<1 || day>31){
   			document.getElementById('birthtext').innerHTML = 
   				"태어난 일을 정확하게 입력하세요.";
   			document.getElementById("day").value="";
   			document.getElementById("day").focus();

    	}else{
   			document.getElementById('birthtext').innerHTML = "";
		}	
	}
	
	function checkClick(){
		alert("인증번호 발송 완료");
	}
	function joinClick(){
		id = document.getElementById("id").value;
		pw1 = document.getElementById("pw1").value;
		pw2 = document.getElementById("pw2").value;
		name = document.getElementById("name").value;
		year = document.getElementById("year").value;
		month = document.getElementById("month").value;
		day = document.getElementById("day").value;
		gender = document.getElementById("gender").value;
		phone = document.getElementById("phone").value;
		checkNumber= document.getElementById("checkNumber").value;
		
		if (!id || !pw1 || !pw2 || !name || !year || !month || !day || !gender || !phone || !checkNumber) {
			alert("필수사항 누락");
		} else {
			alert("가입완료");
		}

	}
</script>
</head>
<body>
	<from id='f'>
		<div id="wrap">
			<table calss="tb">
				<tr><h1>NAVER</h1><tr>
				<tr>아이디</tr><br>
				<tr><input type="text" id="id" onchange="idinput()"> <span class="iddat" id="dat">@naver.com</span></tr>
				<tr><label id="idtext">5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.</label></tr><br>
				<tr>비밀번호</tr><br>
				<tr><input type="password" id="pw1" onchange="pw1input()"> <span class="pwcheck" id="pwcheck">사용불가</span></tr>
				<tr><label id="pw1text">8~16자 영문 대 소문자,숫자,특수문자를 사용하세요.</label></tr><br>
				<tr>비밀번호 재확인</tr><br>
				<tr><input type="password" id="pw2" onchange="pw2input()"></tr><br>
				<tr><label id="pw2text">설정하려는 비밀번호가 맞는지 확이하기 위해 다시 입력해주세요.</label></tr><br>
				<tr>이름</tr><br>
				<tr><input type="text" id="name"></tr><br><br>
				<tr>생년월일</tr><br>
				<tr>
					<input type="text" class="inputSmall" id="year" onchange="yearinput()">
					<select class="month"  id="month">
							<option value="">월</option>
							<option value="1월">1월</option>
							<option value="2월">2월</option>
							<option value="3월">3월</option>
							<option value="4월">4월</option>
							<option value="5월">5월</option>
							<option value="6월">6월</option>
							<option value="7월">7월</option>
							<option value="8월">8월</option>
							<option value="9월">9월</option>
							<option value="10월">10월</option>
							<option value="11월">11월</option>
							<option value="12월">12월</option>
					</select>
					<input type="text" class="inputSmall"  id="day" onchange="dayinput()">
				</tr><br>
				<tr><label id="birthtext" >태어난 년도 4자리를 정확하게 입력하세요.</label></tr><br><br>
				<tr>성별</tr><br>
				<tr>
					<select class="gender" id="gender">
							<option value="">선택안함</option>
							<option value="남">남</option>
							<option value="여">여</option>
					</select>
				</tr><br><br>
				<tr>본인 확인 이메일(선택)</tr><br>
				<tr><input type="text" id="eamil" size="15"><tr><br><br>
				<tr>휴대전화</tr><br>
				<tr>
					<select class="gPhone">
							<option value="대한민국+82">대한민국+82</option>
							<option value="미국+1">미국+1</option>
					</select>
				</tr><br><br>
				<tr>
					<input type="text" id="phone" class="inputMedium" placeholder="전화번호 입력"> 
					<input type="button" value="인증번호 받기" class="cButton" onclick="checkClick()">
				</tr><br><br>
				<tr><input type="text" id="checkNumber" placeholder="인증번호 입력하세요"> 
				</tr><br><br>
				<tr><input type="button" value="가입하기" class="jButton" onclick="joinClick()"></tr><br>
			</table>
		</div>
	</from>
</body>
</html>