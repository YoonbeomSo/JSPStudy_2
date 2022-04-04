function pwCheck(){
	pwd1 = document.getElementById('pwd1').value;
	pwd2 = document.getElementById('pwd2').value;
	if(pwd1 == pwd2){
		 document.getElementById('label').innerHTML = "일치";
	}else{
		 document.getElementById('label').innerHTML = "불일치";
		 document.getElementById('pwd1').value = "";
		 document.getElementById('pwd2').value = ""; 
	}
}

function allCheck(){
	if(document.getElementById('id').value == ""){
		alert('필수 입력 정보 입니다.');
		return;
	}
	if(document.getElementById('pwd1').value == ""){
		alert('필수 입력 정보 입니다.');
		return; 
	}
	document.getElementById('f').submit();
}