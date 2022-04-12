<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<fmt:requestEncoding value="utf-8" />

<c:if test="${not empty param.msg }" >
	<script>
		alert('${param.msg}');
	</script>
</c:if>

<c:if test="${not empty param.page }" >
	<c:choose>
		<c:when test="${param.page == 'back' }">
			<script>
				history.back();
			</script>
		</c:when>
		<c:otherwise>
			<script>
				location.href='${param.page}';
			</script>
		</c:otherwise>
	</c:choose>
</c:if>