<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ include file="../header.jsp"%>    


<c:if test="${empty sessionScope.id }">
	<script>alert('로그인 후 사용할 수 있습니다.'); location.href='login.jsp';</script>
</c:if>

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
 <h1> 회원탈퇴 </h1>
 <form action="deleteService.jsp" method="post" id="form_login">
	 
		<label>아이디 </label><input type="text" name="id" id="id" value='${sessionScope.id}' disabled="disabled"> <br>
		<label>패스워드</label> <input type="password" name="pw" id="pw"> <br>
		<label>패스워드 확인</label> <input type="password" name="confirmPw" id="confirmPw"><br>
	
	 <div id="buttons_login">
		 	<input type="submit" value="탈퇴"  class="submit_mem" >
		 	<input type="button" value="취소"
			 onclick="javascript:location.href='/care/index.jsp';" class="cancel_mem">
	 </div>
 	</form>
 </article>
 <%@ include file="../footer.jsp"%>