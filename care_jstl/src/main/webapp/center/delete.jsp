<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<fmt:requestEncoding value="utf-8" />

<c:if test="${empty param.num }">
	<c:url var="error" value="error.jsp">
		<c:param name="page" value="${'list.jsp' }"/>
	</c:url>
	<c:redirect url="${error }" />
</c:if>

<c:catch var="e">
	<c:set var="num" value="${Integer.parseInt(param.num) }" />
	
	<c:if test="${not empty e }" >
		<c:url var="error" value="error.jsp">
			<c:param name="page" value="${'list.jsp' }"/>
		</c:url>
		<c:redirect url="${error }" />
	</c:if>
</c:catch>

<c:if test="${empty sessionScope.id }">
	<c:url var="error" value="error.jsp">
		<c:param name="page" value="${'/care/member/login.jsp' }"/>
		<c:param name="msg" value="${'로그인 후 이용하세요.' }"/>
	</c:url>
	<c:redirect url="${error }" />
</c:if>

<jsp:useBean id="centerDao" class="center.CenterDAO" />
<c:set var='center' value="${  centerDao.selectNum(num)}" />
<c:if test="${empty center }">
	<c:url var="error" value="error.jsp">
		<c:param name="page" value="${'list.jsp' }"/>
	</c:url>
	<c:redirect url="${error }" />
</c:if>

<c:if test="${center.getId().equals(sessionScope.id) == false }">
	<c:url var="error" value="error.jsp">
		<c:param name="page" value="${'list.jsp' }"/>
		<c:param name="msg" value="${'작성자만 게시글을 삭제할 수 있습니다.' }"/>
	</c:url>
	<c:redirect url="${error }" />
</c:if>

<c:set var="fileName" value="${center.getFileName() }" />
<c:set var="saveFolder" value="${'C:/javas/upload/'}${sessionScope.id}" />
<c:set var="path" value="${saveFolder}/${fileName }" />
<%
	String filePath = (String)pageContext.getAttribute("path");
	File file = new File(filePath);
	pageContext.setAttribute("file", file);
%>
<c:if test="${file.exists()}" >
	${file.delete() }
</c:if>

${centerDao.delete(num) }

<c:url var="error" value="error.jsp">
	<c:param name="page" value="${'list.jsp' }"/>
	<c:param name="msg" value="${'게시글 삭제 완료' }"/>
</c:url>
<c:redirect url="${error }" />

<%-- 	<%
		CenterDTO center = (CenterDTO)pageContext.getAttribute("center")
		String fileName = center.getFileName();
		String saveFolder = "C:\\javas\\upload\\" + id;
		File file = new File(saveFolder + "/" + fileName);
		if(file.exists())
			file.delete();
	%> 
--%>









