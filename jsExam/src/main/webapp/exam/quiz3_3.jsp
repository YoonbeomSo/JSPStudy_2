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
			var id = document.getElementById("id").value;
		    var msg = document.getElementById('id_msg');
		    
			if (id == "") {
				msg.innerHTML = "필수 정보입니다.";
				return;
		    }

		    var isPW = /^[a-z0-9][a-z0-9_\-]{4,19}$/;
		    if (!isPW.test(id)) {
		    	msg.innerHTML = "5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.";
		    	return;
		    } 
			msg.innerHTML = "";
		}
		function pwCheck(){
			var pw = document.getElementById("pw").value;
		    var msg1 = document.getElementById('pw_msg1');
		    var msg2 = document.getElementById('pw_msg2');
		
			if (pw == "") {
				msg1.style.color="red";
				msg1.style.left="285px";
				msg1.innerHTML = "사용불가";
				msg2.innerHTML = "필수 정보입니다.";
				return;
		    }

		    var isPW = /^[A-Za-z0-9`\-=\\\[\];',\./~!@#\$%\^&\*\(\)_\+|\{\}:"<>\?]{8,16}$/;
		    if (!isPW.test(pw)) {
		    	msg1.style.color="red";
		    	msg1.style.left="285px";
		    	msg1.innerHTML = "사용불가";
		    	msg2.innerHTML = "8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
		    	return;
		    }
		    
		    msg1.style.color="green";
		    msg1.style.left="320px";
		    msg1.innerHTML = "안전";
		    msg2.innerHTML = "";    
		}
		
		function coCheck(){
			var pw = document.getElementById("pw").value;
			var confirm_pw = document.getElementById("confirm_pw").value;
		    var msg = document.getElementById('co_msg');
		    
			if (confirm_pw == "") {
				msg.innerHTML = "필수 정보입니다.";
				return;
		    }

		    if (pw != confirm_pw) {
		    	msg.innerHTML = "설정하려는 비밀번호가 맞는지 확인하기 위해 다시 입력 해주세요.";
		    	return;
		    }
			msg.innerHTML = "";
		}
		
		function nameCheck(){
			var name = document.getElementById("name").value;
		    var msg = document.getElementById('name_msg');
		    
			if (name == "") {
				msg.innerHTML = "필수 정보입니다.";
				return;
		    }

			var nonchar = /[^가-힣a-zA-Z0-9]/gi;
	        if (nonchar.test(name)) {
	        	msg.innerHTML = "한글과 영문 대 소문자를 사용하세요. (특수기호, 공백 사용 불가)";
	    		return;
	   		}
	    	msg.innerHTML = "";
		}
		
		function birth(){
			var year = document.getElementById("year").value;
			var month = document.getElementById("month").value;
			var day = document.getElementById("day").value;
			
		    var year_msg = document.getElementById('year_msg');
		    year_msg.innerHTML = "";
		  
	        if (year == "" && month == "" && day == "") {
	        	year_msg.innerHTML = "태어난 년도 4자리를 정확하게 입력하세요.";
	            return;
	        }

	        if(year == "") {
	        	year_msg.innerHTML = "태어난 년도 4자리를 정확하게 입력하세요.";
	            return ;
	        }
	        
	        if(year.length != 4) {
	           	year_msg.innerHTML = "태어난 년도 4자리를 정확하게 입력하세요.";
	            return ;
	        }
	        if (day.length == 1) {
	            day = "0" + day;
	        }
	        if (month.length == 1) {
	        	month = "0" + month;
	        }
	        
 	        if(month == "") {
 	        	year_msg.innerHTML = "태어난 월을 선택하세요.";
	            return ;
	        }
	        if(day == "") {
	        	year_msg.innerHTML = "태어난 일(날짜) 2자리를 정확하게 입력하세요.";
	            return ;
	        }
	        
	        if(day.length != 2 ) {
	        	year_msg.innerHTML = "태어난 일(날짜) 2자리를 정확하게 입력하세요.";
		         return ;
	        } 

	        birthday = year + month + day;
	        if (birthday.length != 8) {
	        	year_msg.innerHTML = "생년월일을 다시 확인해주세요.";
	            return;
	        }

            if (month < 1 || month > 12) {
            	year_msg.innerHTML = "생년월일을 다시 확인해주세요.";
                return;
            }

	        var maxDaysInMonth = [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ];
	        var maxDay = maxDaysInMonth[month - 1];
			if (month == 2 && (year % 4 == 0 && year % 100 != 0 || year % 400 == 0)) {
	            maxDay = 29;
	        }

           if (day <= 0 || day > maxDay) {
        	   year_msg.innerHTML = "생년월일을 다시 확인해주세요.";
               return;
           }
	        year_msg.innerHTML = "";

	        var age = calcAge(birthday);
	        if (age < 0) {
	        	year_msg.innerHTML = "미래에서 오셨군요. ^^";
	            return ;
	        } else if (age >= 100) {
	            year_msg.innerHTML = "정말이세요?";
	            return ;
	        } else if (age < 14) {
	            year_msg.innerHTML = "만 14세 미만의 어린이는 보호자 동의가 필요합니다.";
	            return ;
	        } 
		}
		
	    function calcAge(birth) {
	        var date = new Date();
	        var year = date.getFullYear();
	        var month = (date.getMonth() + 1);
	        var day = date.getDate();
	        if (month < 10)
	            month = '0' + month;
	        if (day < 10)
	            day = '0' + day;
	        var monthDay = month + '' + day;

	        birth = birth.replace('-', '').replace('-', '');
	        var birthdayy = birth.substr(0, 4);
	        var birthdaymd = birth.substr(4, 4);

	        var age = monthDay < birthdaymd ? year - birthdayy - 1 : year - birthdayy;
	        return age;
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