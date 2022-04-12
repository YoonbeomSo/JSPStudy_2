<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<c:if test="${empty sessionScope.id }">
	<script>alert('로그인 후 사용할 수 있습니다.'); location.href='login.jsp';</script>
</c:if>

<%@ include file="../header.jsp"%>

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
 <h1> 회원수정 </h1>
 	<form action="updateService.jsp" method="post">
 	
 		<fieldset class="fieldset_mem">
 			<legend>기본 정보</legend>
 			<label>아이디</label><input type="text" name="id" value='${sessionScope.id }' disabled="disabled"> <div class="clear"></div>
 			<label>패스워드</label><input type="password" name="pw"> <div class="clear"></div>
 			<label>패스워드 확인</label><input type="password" name="confirmPw"> <div class="clear"></div>
 			<label>이름</label><input type="text" name="name" value='${sessionScope.name }'> <div class="clear"></div>
 		</fieldset>
 		
 		<fieldset class="fieldset_mem">
 			<legend>부가 정보</legend>
 			<label>이메일</label><input type="text" name="email" value='${sessionScope.email }'> <div class="clear"></div>
 			<label>핸드폰</label><input type="text" name="phone" value='${sessionScope.phone }'> <div class="clear"></div>
 			<label>주소</label><input type="text" name="address" value='${sessionScope.address }'> <div class="clear"></div>
 		</fieldset>
 		
 		<div id="buttons_mem">
 			<input type="submit" class="submit_mem" value="수정">
 			<input type="reset" class="cancel_mem" value="취소">
 		</div>

 	</form>
</article>
<%@ include file="../footer.jsp"%>









