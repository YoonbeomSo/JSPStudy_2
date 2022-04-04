<%@page import="actionTag.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<fmt:requestEncoding value="utf-8"/>

<jsp:useBean id="member" class="actionTag.MemberDTO"/>
<jsp:setProperty property="*" name="member"/>

<jsp:useBean id="memberDao" class="actionTag.MemberDAO"/>

<c:if test="${empty member.getId() || empty member.getPwd1()}">
	<script>alert('필수 정보입니다.'); history.back();</script>
</c:if>
<c:if test="${member.getPwd1() != member.getPwd2() }">
	<script>alert('두 패스워드가 일치하지 않습니다.'); history.back();</script>
</c:if>
<c:set var="check" value="${memberDao.selectId(member.getId()) }" />
<c:choose>
	<c:when test="${empty check }">
		${	memberDao.insert(member)}
		<script>alert('회원 가입 완료'); location.href='index.jsp';</script>
	</c:when>
	<c:otherwise>
		<script>alert('회원 가입 실패'); history.back();</script>
	</c:otherwise>
</c:choose>
