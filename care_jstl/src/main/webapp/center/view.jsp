<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

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

<jsp:useBean id="centerDao" class="center.CenterDAO" />
<c:set var="center" value="${centerDao.selectNum(num) }" />
<c:if test="${empty center }">
	<c:url var="error" value="error.jsp">
		<c:param name="page" value="${'list.jsp' }"/>
	</c:url>
	<c:redirect url="${error }" />
</c:if>

<c:set var="hit" value="${center.getHit() + 1}" />
${centerDao.incrementHit(hit, num) }

<div id="img_cen"></div>
<nav id="nav_sub">
	<ul>
		<li><a href="list.jsp?pageNumber=${param.pageNumber }">게시글 목록</a></li>
		<li><a href="write.jsp">게시글 작성</a></li>
		<li><a href="delete.jsp?num=${num }">게시글 삭제</a></li>
		<li><a href="modify.jsp?pageNumber=${param.pageNumber }">게시글 수정</a></li>
	</ul>
</nav>

<article id="article_sub">
	<h1>게시글 확인</h1>
	<div id="view_title">
		<div class="view_title1">${center.getSubject() }</div>
		<div class="view_title2">${center.getId() } | 조회수: ${hit } | ${center.getWriteTime() }</div>
	</div>
	<div id="view_content">${center.getContent() }</div>

	<div id="view_file">첨부 파일 : <a href="fileDown.jsp?fileName=${center.getFileName() }">${center.getFileName() }</a></div>

	<div id="center_button">
		<a href="list.jsp?pageNumber=${param.pageNumber }"><img src="/care/images/list.png"></a>
		<a href="modify.jsp?pageNumber=${param.pageNumber }&num=${num}"><img src="/care/images/modify.png"></a>
		<a href="delete.jsp?num=${num}"><img src="/care/images/delete.png"></a>
		<a href="write.jsp"><img src="/care/images/write.png"></a>
	</div>
</article>
<%@ include file="../footer.jsp"%>