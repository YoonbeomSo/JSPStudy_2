<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<fmt:requestEncoding value="utf-8" />

<jsp:useBean id="centerDao" class="center.CenterDAO" />

<c:choose> 
	<c:when test="${not empty param.mode && param.mode == 'search' }">
		<c:if test="${empty param.data }">
			<c:url var="error" value="error.jsp">
				<c:param name="msg" value="${'검색어를 입력하세요.' }" />
				<c:param name="page" value="${'back' }" />
			</c:url>
			<c:redirect url="${error }"/>
		</c:if>
		<c:set var="list" value="${centerDao.search(param.find, param.data) }" />
	</c:when>
	
	<c:otherwise>
		<c:set var="list" value="${centerDao.selectAll() }" />
	</c:otherwise>
</c:choose>

<jsp:useBean id="cl" class="center.CenterList" />
${cl.setPageNumber(param.pageNumber)}
${cl.setTotalRecord(list.size() )}

<div id="img_cen"></div>
<nav id="nav_sub">
	<ul>
		<li><a href="list.jsp?pageNumber=${param.pageNumber }">게시글 목록</a></li>
		<li><a href="write.jsp">게시글 작성</a></li>
		<li><a href="delete.jsp">게시글 삭제</a></li>
		<li><a href="modify.jsp?pageNumber=${param.pageNumber }">게시글 수정</a></li>
	</ul>
</nav>
<article id="article_sub">
	<h1> 게시글 목록</h1>
		<table>
		 <tr>
		 	<th class="no">번호</th>
		 	<th class="title">제목</th>
		 	<th class="writer">작성자</th>
		 	<th class="date">날짜</th>
		 	<th class="hit">조회수</th>
		 </tr>
		  <!-- http://localhost:8085/care/center/list.jsp?pageNumber=3 -->
		  <c:choose>
		  	<c:when test="${cl.getPageNumber() >=  cl.getTotalPage()}">
		  		<c:set var="end" value="${ cl.getTotalRecord() - 1}" />
		  	</c:when>
		  	<c:otherwise>
		  		<c:set var="end" value="${ cl.getScroll() + cl.getStart() - 1}" />
		  	</c:otherwise>
		  </c:choose>
		  
		  <c:forEach var="i" begin="${cl.getStart() }" end="${end }" step="1">
		  	<c:set var="center" value="${list.get(i) }" />
		  	 <tr>
			 	<td>${ center.getNum() }</td>
			 	<td class="subject">	
			 		<a href="view.jsp?num=${center.getNum()}&pageNumber=${cl.getPageNumber()}">${center.getSubject()}</a>
			 	</td>
			 	<td>${center.getId() }</td>
			 	<td>${center.getWriteTime() }</td>
			 	<td>${center.getHit() }</td>
			</tr>
		  </c:forEach>
		
		</table>
		
		<form action="list.jsp?mode=search" method="post" id="list_form">
			<select name="find">
				<option value="subject">제목</option>
				<option value="content">내용</option>
				<option value="id">작성자</option>
			</select>
			<input type="text" name="data">
			<input type="submit" value="검색">
		</form>
		
		<div class="clear"></div>
		<style>
			a{text-decoration: none}
		</style>
		<div id="page_control" >
		
		<c:choose>
			<c:when test="${cl.getPageNumber() <= 1 }"> 
				<a href='#'>Prev </a>
			</c:when>
			<c:otherwise>
				<c:set var="tmp" value="${cl.getPageNumber() - 1 }" />
				<a href='list.jsp?pageNumber=${tmp}&mode=${param.mode}&find=${param.find}&data=${param.data}'>Prev </a>
			</c:otherwise>
		</c:choose>
		
		<c:forEach var="i" begin="1" step="1" end="${cl.getTotalPage() }">
			<c:choose>
				<c:when test="${cl.getPageNumber() == i}"> 
					<b> ${i } </b>
				</c:when>
				<c:otherwise>
					<a href='list.jsp?pageNumber=${i}&mode=${param.mode}&find=${param.find}&data=${param.data}'> ${i } </a>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		
		<c:choose>
			<c:when test="${cl.getPageNumber() >= cl.getTotalPage()}"> 
				<a href='#'>Next </a>
			</c:when>
			<c:otherwise>
				<c:set var="tmp" value="${cl.getPageNumber() + 1 }" />
				<a href='list.jsp?pageNumber=${tmp}&mode=${param.mode}&find=${param.find}&data=${param.data}'>Next </a>
			</c:otherwise>
		</c:choose>

		</div>
		<div id="center_button">
			<a href="write.jsp"> <img src="/care/images/write.png"> </a>
		</div>
</article>
<%@ include file="../footer.jsp"%>