<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
		bmiForm.jsp, bmiResult.jsp
		
		사용자로부터 이름, 키, 체중 값을 입력 받아 비만도를 구하고 
		결과를 출력 할 때 비만도 값 100을 기준으로 100 미만이면 저체중, 
		100 이상 110 미만은 정상, 110 이상 120 미만 과체중, 120 이상 130 미만 비만, 
		130 이상은 고도비만으로 출력 하시오.
		
		비만도 계산 식 : 비만도(%) = 현재 체중 / 표준 체중 * 100
		표준 체중 계산 식 : 표준 체중 = (현재 키 – 100) * 0.9

		출력 예제 : 홍길동님의 비만도는 112.15% 로 과체중 입니다.
	 --%>
	<form action="bmiResult.jsp" method="post">
		<fieldset style="width:200px">
		<legend>BMI 계산</legend>
			이름: <input type="text" name="name" size="10"><br>
			키: <input type="text" name="cm" size="10"><br>
			체중: <input type="text" name="kg" size="10"><br>
		</fieldset>
	<input type="submit" value="입력완료">
	</form>
</body>
</html>