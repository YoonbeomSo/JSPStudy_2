<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>naver</title>
	<style>
		#wrap{margin: 0 auto; padding: 0;}
		#content{ margin: 0 auto; width: 400px;  overflow: hidden; }
		.row{width: 100%; margin: 10px 0;}
		h1{ text-align: center; color: #03c75a;}
		label{font-size: 12px; width: 90%;margin-top: 10px;}
		input{width:90%; height:30px; margin: 2px;}
		
		#id_email{position:relative; top:-30px; left:270px}
		#id_msg{left: -90px; position:relative; font-size:10px;color: red;}
		
		#pw_msg1{position:relative; color: red; top:-30px; left:285px;}
		#pw_msg2{left: -65px; position:relative; font-size:10px; color: red;}
		#co_msg{padding-left: 5px; font-size:10px; color: red;}
		#name_msg{padding-left: 5px; font-size:10px; color: red;}
		#year_msg{margin-left: 10px; font-size:10px; color: red;}
		#year, #month, #day{float: left; width: 28%; height: 30px; margin: 0 5px;}
		.clear{clear: both;}
		select{ width: 93%; height: 30px;}
		#mobile{width: 60%; height: 30px;}
		#confirm{width: 27%; height: 35px;}
		#join{width: 93%; height: 35px; background-color: #03c75a; color: #fff; }
		#confirm{text-align: center;  background-color: #03c75a; color: #fff; font-size: 12px;}
	</style>
	<script>
		function idCheck(){
			id = document.getElementById("id").value;
			var pattern_eng = /[A-Z]/;// 대문자 
	    	var pattern_spc = /[~!@#$%^&*()+|<>?;:{}\/=><]/; // (_,-제외)특수문자
	    	var pattern_kor = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/; // 한글체크
	    	
	    	if( !(pattern_eng.test(id)) && !(pattern_spc.test(id)) && !(pattern_kor.test(id)) ){
	    		if(id.length<5 || id.length >20){
	    			document.getElementById('id_msg').innerHTML = 
	    				"5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.";
	    		}else{
	    			document.getElementById('id_msg').innerHTML = "";
	    		}
	    	}else{
				document.getElementById('id_msg').innerHTML = 
					"5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.";
			}	
		}
	
		function pwCheck(){
			pw = document.getElementById("pw").value;
	    	var pattern_kor = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/; // 한글체크

	    	if( !(pattern_kor.test(pw))){
	    		if(pw.length<8 || pw.length >16){
	    			document.getElementById('pw_msg2').innerHTML = 
	    				"8~16자 영문 대 소문자,숫자,특수문자를 사용하세요.";
	    			document.getElementById('pw_msg1').innerHTML = 
	    				"사용 불가";
	    		}else{
	    			document.getElementById('pw_msg2').innerHTML = "";
	    			document.getElementById('pw_msg1').innerHTML = "";
	    		}
	    	}else{
				document.getElementById('pw_msg2').innerHTML = 
					"8~16자 영문 대 소문자,숫자,특수문자를 사용하세요.";
				document.getElementById('pw_msg1').innerHTML = 
					"사용 불가";
			}	
		}
		
		function coCheck(){
			pw = document.getElementById("pw").value;
			confirm_pw = document.getElementById("confirm_pw").value;
	    	if(pw!==confirm_pw){
	   			document.getElementById('co_msg').innerHTML = 
	   				"설정하려는 비밀번호가 맞는지 확이하기 위해 다시 입력해주세요.";
	    	}else{
	   			document.getElementById('co_msg').innerHTML = "";
			}	
		}
		function nameCheck(){
			name = document.getElementById("name").value;
			var pattern_kor = /[가-힣]/; // 한글체크
			if(!pattern_kor.test(name)){
				document.getElementById('name_msg').innerHTML = 
	   				"이름을 한글로 올바르게 입력해주세요.";
			}else{
				document.getElementById('name_msg').innerHTML = "";
			}
		}
		
		function birth(){
			year = document.getElementById("year").value;
			month = document.getElementById("month").value;
			day = document.getElementById("day").value;
			
			if(year.length!=4){
	   			document.getElementById('year_msg').innerHTML = 
	   				"태어난 년도 4자리를 정확하게 입력하세요.";
	   			document.getElementById("year").value="";
	    	}else{
	   			document.getElementById('year_msg').innerHTML = "";
			}
			
			if(month == '01' || month == '03' ||  month == '05' 
					|| month == '07' || month == '08' || month == '10' || month == '12'){
				dayday=31;
			}else if(month == '04' || month == '06' ||  month == '09' || month == '11'){
				dayday=30;
			}else{
				if(year%4==0 && year%100!=0 && year%400==0){
					dayday=29;
				}else{
					dayday=28;
				}
			}
			
			
			
			if(year_msg !="" &&  month !="" )
		    	if( day<1 || day>dayday){
		   			document.getElementById('year_msg').innerHTML = 
		   				"태어난 일을 정확하게 입력하세요.";
		   			document.getElementById("day").value="";
		   			document.getElementById("day").focus();
		   			return;
		    	}else{
		   			document.getElementById('year_msg').innerHTML = "";
				}	

		}
	</script>
	
</head>
<body>
	
	<div id="wrap">
		<div id="content">
			<h1>NAVER</h1>
			
			<div class="row">

				<label>아이디</label><br>
				<input style="position:relative" maxlength="15" type="text" id="id" name="id" onchange="idCheck()">
				<span id="id_email">@naver.com</span>
				<span id="id_msg" ></span><br>
					
				<label>비밀번호</label><br>
				<input style="position:relative" type="password" id="pw" onblur="pwCheck()"><br>
				<span id="pw_msg1" ></span>
				<span id="pw_msg2" ></span><br>
				
				<label>비밀번호 재확인</label><br>
				<input type="password" id="confirm_pw" onblur="coCheck()"><br>
				<span id="co_msg"></span><br>
			</div>
			
			<div class="row">	
				<label>이름</label><br>
				<input type="text" id="name" onblur="nameCheck()"><br>
				<span id="name_msg"></span><br>
				
				<label>생년월일</label><br>
				<input type="text" id="year" onblur="birth()">
			
				<select size="1" id="month" onblur="birth()" >
					<option value="" selected>월
					<option value="01">1월
					<option value="02">2월
					<option value="03">3월
					<option value="04">4월
					<option value="05">5월
					<option value="06">6월
					<option value="07">7월
					<option value="08">8월
					<option value="09">9월
					<option value="10">10월
					<option value="11">11월
					<option value="12">12월
				</select>
				<input type="text" id="day" onblur="birth()">
				<br>
				<span id="year_msg"></span>

				<div class="clear"></div>
				<br><label>성별</label><br>
				<select size="1" class="gender">
					<option value="g0" selected>성별
					<option value="g1">남자
					<option value="g2">여자
					<option value="g2">선택안함
				</select><br>
				
				<br><label>본인 확인 이메일(선택)</label><br>
				<input type="text" name="email" placeholder="선택입력">
			</div>
			
			<div class="row">
				<label>휴대전화</label><br>
				<select size="1" class="select_mobile">
					<option value="n1" selected>대한민국+82
					<option value="n2">가나+233
					<option value="n3">가봉+234
				</select><br><br>
				<input type="text" id="mobile" placeholder="전화번호 입력" >
				<input type="button" id="confirm" value="인증번호 받기" ><br><br>
				<input type="text" id="auth" placeholder="인증번호 입력하세요" ><br>

			</div>
			<input type="button" id="join" value="가입하기">
		</div>
	</div>
	</body>
</html>