<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<fmt:requestEncoding value="utf-8" />

<jsp:useBean id="member" class="member.MemberDTO"/>
<jsp:setProperty property="*" name="member"/>

<c:choose>
	<c:when test="${empty sessionScope.id }">
		<script>alert('로그인 후 사용할 수 있습니다.'); location.href='login.jsp';</script>
	</c:when>
	<c:when test="${empty member.getPw() || empty member.getName() }">
		<script>alert('password는 필수 정보입니다.'); history.back();</script>
	</c:when>
	<c:when test="${member.getPw() != param.confirmPw }">
		<script>alert('두 비밀번호가 다릅니다.'); history.back();</script>
	</c:when>
	<c:otherwise>
		<jsp:useBean id="memberDao" class="member.MemberDAO"/>
		${ memberDao.update(member)}
		<script>alert('회원수정 완료'); location.href='logout.jsp';</script>
	</c:otherwise>
</c:choose>

