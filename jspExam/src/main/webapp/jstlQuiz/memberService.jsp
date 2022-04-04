
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<fmt:requestEncoding value="utf-8" />

<jsp:useBean id="member" class="jspJdbc.MemberDTO"/>
<jsp:setProperty property="*" name="member"/>

<c:choose>
	<c:when test="${ empty member.getId() || empty member.getPw() || empty member.getName() }">
		<script>alert('필수 정보입니다.'); history.back();</script>
	</c:when>
	<c:when test="${ member.getPw() != param.confirmPw }">
		<script>alert('두 비밀번호가 다릅니다.'); history.back();</script>
	</c:when>
	<c:otherwise>
		<jsp:useBean id="memberDao" class="jspJdbc.MemberDAO"/>
		<c:set var="check" value="${memberDao.selectId(member.getId()) }" />
		
		<c:choose>
			<c:when test="${ not empty check}">
				<script>alert('중복 아이디입니다.'); history.back();</script>
			</c:when>
			<c:otherwise>
				${ memberDao.insert(member)}
				<script>alert('회원가입 완료'); location.href='index.jsp';</script>
			</c:otherwise>
		</c:choose>
	</c:otherwise>
</c:choose>



