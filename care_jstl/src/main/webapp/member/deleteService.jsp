<%@page import="member.MemberCheck"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="fmt" %>

<fmt:requestEncoding value="utf-8" />
<c:choose>
	<c:when test="${empty sessionScope.id }">
		<script>alert('로그인 후 사용할 수 있습니다.'); location.href='login.jsp';</script>
	</c:when>
	<c:when test="${empty param.pw }">
		<script>alert('필수 정보입니다.'); history.back();</script>
	</c:when>
	<c:when test="${param.pw != param.confirmPw }">
		<script>alert('두 비밀번호가 다릅니다.'); history.back();</script>
	</c:when>
	<c:otherwise>
		<c:set var="memberDao" value="<%=new MemberDAO() %>" />
		<c:set var="member" value="${memberDao.selectId(sessionScope.id) }" />
		<c:choose>
			<c:when test="${member != null && member.getPw().equals(param.pw) }">
				${memberDao.delete(member) }
				<c:set var="printId" value="${sessionScope.id }" />
				<c:remove var="id" scope="session" />
				<c:remove var="name" scope="session" />
				<c:remove var="email" scope="session" />
				<c:remove var="phone" scope="session" />
				<c:remove var="address" scope="session" />
				<script>alert('${printId} 계정 삭제 완료');location.href='../index.jsp';</script>
			</c:when>
			<c:otherwise>
				<script>alert('비밀번호를 확인 후 다시 입력하세요.'); history.back();</script>
			</c:otherwise>
		</c:choose>
	</c:otherwise>
</c:choose>
