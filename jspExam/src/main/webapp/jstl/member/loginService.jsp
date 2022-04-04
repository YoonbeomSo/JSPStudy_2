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
    <c:set var="check" value="${memberDao.selectId(member.getId())}" />
    
    <c:choose>
    	<c:when test="${ !(empty check) && check.getPwd1() == member.getPwd1()}"> 
    		<c:set var="id" value="${member.getId()}" scope="session" />
    		<c:redirect url="index.jsp" />
    	</c:when>
    	<c:otherwise>
    		<script>alert('아이디/비밀번호를 확인하세요.'); history.back();</script>
    	</c:otherwise>
    </c:choose>