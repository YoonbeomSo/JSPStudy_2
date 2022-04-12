<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../header.jsp" %>
<script>
	function check(){
		id = document.getElementById("id").value
		pw = document.getElementById("pw").value
		if(id == ""){
			alert('아이디를 입력하세요.');
			return;
		}
		if(pw == ""){
			alert('패스워드를 입력하세요.');
			return;
		}
		if(id.length < 5 || id.length > 19){
			alert('아이디는 5~19자리 입니다.');
			return;
		}
		document.getElementById("form_login").action = "loginService.jsp";
		document.getElementById("form_login").method = "post"; 
		document.getElementById("form_login").submit();
	}
	
</script>

<div id="img_mem"></div>
<nav id="nav_sub">
	<ul>
		<li> <a href="member.jsp"> 회원 가입 </a></li>
		<li> <a href="update.jsp"> 회원 수정 </a></li>
		<li> <a href="delete.jsp"> 회원 탈퇴 </a></li>
		<li> <a href="login.jsp"> 로그인 </a></li>
		<li> <a href="logout.jsp"> 로그아웃 </a></li>
	</ul>
</nav>
<article id="article_sub">
<c:choose>
	<c:when test="${empty sessionScope.id }">
	 	<h1> 로그인 </h1>
	 	<form id="form_login">
		 	<label>아이디</label> <input type="text" name="id" id="id">
		 	<label>패스워드</label> <input type="password" name="pw" id="pw">
			 <div id="buttons_login">
				 	<input type="button" value="로그인"  class="submit_mem" onClick="check()">
				 	<input type="button" value="취소"
					 onclick="javascript:location.href='/care/index.jsp';" class="cancel_mem">
			 </div>
	 	</form>
	</c:when>
	<c:otherwise>
		${sessionScope.name }님은 로그인 되셨습니다.<br>
		<a href='../index.jsp'>클릭하면 인덱스 페이지로 이동합니다.</a>
	</c:otherwise>
</c:choose>
</article>
<%@ include file="../footer.jsp" %>





