<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<fmt:requestEncoding value="utf-8"/>
	
	<c:if test="${empty param.id || empty param.pw }">  
		<script>alert("필수 정보입니다."); history.back();</script>
	</c:if>
	
	<c:choose>
		<c:when test="${'admin' == param.id && '1234' == param.pw }">
			<c:set var="id" value="admin" scope="session" />
			<c:redirect url="ex7_loginSuccess.jsp"/>
		</c:when>
		<c:otherwise>
			<script>alert('아이디/비밀번호를 확인하세요.'); history.back();</script>
		</c:otherwise>
	</c:choose>