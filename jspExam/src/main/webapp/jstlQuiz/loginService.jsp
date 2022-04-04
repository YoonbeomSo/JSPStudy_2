<%@page import="jspJdbc.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<fmt:requestEncoding value="utf-8" />
<c:choose>
	<c:when test="${empty param.id || empty param.pw }">
		<script>alert('필수 정보입니다.'); history.back();</script>
	</c:when>
	<c:otherwise>
		<c:set var="memberDao" value="<%=new MemberDAO() %>" />
		<c:set var="member" value="${memberDao.selectId(param.id) }" />
		<c:choose>
			<c:when test="${member != null && member.getPw().equals(param.pw) }" >
				<c:set var="id" value="${member.getId() }" scope="session" />
				<c:set var="name" value="${member.getName() }" scope="session" />
				<c:set var="email" value="${member.getEmail() }" scope="session" />
				<script>alert('${sessionScope.id} 님 환영합니다.');location.href='index.jsp';</script>
			</c:when>
			<c:otherwise>
				<script>alert('아이디/비밀번호를 확인 후 다시 입력하세요.'); history.back();</script>
			</c:otherwise>
		</c:choose>
	</c:otherwise>
</c:choose>
