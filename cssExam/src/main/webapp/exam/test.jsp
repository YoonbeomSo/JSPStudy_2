<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz10</title>
</head>
<style>
	body{
	width: 700px;
	margin: 50px auto;
	
	}
	#wrap{
		width: 100%;
		background-color: #f7f7f7;
		overflow: auto;
		
	}
	.head{
		margin: 5% 20px 0; 
	}
	.terms{
		margin: 5% 20px; 
	}
	table{
		width: 80%;
		margin: 0 20px 20px; 
		border-collapse: collapse;
	}
	td, th{
		
		padding: 10px;
		
	}
	th{
		border: 1px solid white;
		background: gray;
		color: white;	
		text-align: center;
	}
	td{
		text-align: left;
	}

</style>
<body>
	<div id = "wrap">
		<div class ="head">
			<h1>빠른 상담 예약</h1>
			<p>직접 방문하시면 효과적인 공부방법을 체계적으로 상담해 드립니다.</p>
		</div>
		<br>
		<div class = "content">
			<table>
				<tr>
					<th>상담일시</th>
					<td><input type="date" name="상담일" >
						<select size=1 name="time" >
							<option value="p0" selected>선택 <option value="p1">AM10:00
							<option value="p2">AM11:00 <option value="p3">PM01:00
							<option value="p4">PM02:00
						</select>
					</td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" name="이름" placeholder="김 아무개"></td>
				</tr>	
				<tr>
					<th>성별</th>
					<td>
						<input type="radio" name="성별">남 <input type="radio" name="성별">여				
					</td>
				</tr>
				<tr>
					<th>연락처</th>
					<td>
						<select size=1 name="phone-first" ><option value="p0" selected>010 <option value="p1">011 <option value="p2">017</select>
						 - <input type="text" name="phone-mid" placeholder="xxxx"> 
						 - <input type="text" name="phone-end" placeholder="xxxx">
					</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td>
						<input type="text" name="Email-id"> @<br><br><input type="text" name="Email-domain">
					</td>
				</tr>
				<tr>
					<th>궁금한점</th>
					<td>
						<textarea name="Question" rows="2" cols="50" placeholder="* 궁금한 점이 있다면 적어주세요 없다면 입력하지 않아도 됩니다."></textarea>
					</td>
				</tr>
			</table>
		</div>
		
		<div class ="terms">
			<textarea name="terms-content" rows="10" cols="90%">
			이용 약관이용 약관이용 약관이용 약관이용 약관이용 약관이용 약관이용 약관이용 약관
			이용 약관이용 약관이용 약관이용 약관이용 약관이용 약관이용 약관이용 약관이용 약관
			이용 약관이용 약관이용 약관이용 약관이용 약관이용 약관이용 약관이용 약관이용 약관
			이용 약관이용 약관이용 약관이용 약관이용 약관이용 약관이용 약관이용 약관이용 약관
			이용 약관이용 약관이용 약관이용 약관이용 약관이용 약관이용 약관이용 약관이용 약관
			이용 약관이용 약관이용 약관이용 약관이용 약관이용 약관이용 약관이용 약관이용 약관
			</textarea>
			<br>
			<br>
			<input type="checkbox"name="동의"> 개인정보 수집 동의
			<br>
			<br>
			<input type="submit" style="width:120px;height:50px;" value="문의 하기">
		</div>
	</div>
</body>
</html>