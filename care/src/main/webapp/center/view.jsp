<%@page import="center.CenterDTO"%>
<%@page import="center.CenterDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<%
	//number를 전달받고 null이 아니라면 int형으로 변환
	String n = request.getParameter("num");
	if(n == null || n == ""){
		out.print("<script>history.back();</script>");
		return;
	}
	int num = 0;
	try{
		num = Integer.parseInt(n);
	}catch(NumberFormatException e){
		out.print("<script>location.href='list.jsp';</script>");
		return;
	}
	
	//DB에서 number에 따른 정보 가져오기
	CenterDAO centerDao = new CenterDAO();
	CenterDTO center = centerDao.selectNum(num);
	if(center == null){ //DB에 해당 데이터 없으면 게시글목록으로 이동
		out.print("<script>location.href='list.jsp';</script>");
		return;
	}
	String id = center.getId();
	String subject = center.getSubject();
	String content = center.getContent();
	String writeTime = center.getWriteTime();
	String fileName = center.getFileName();
	
	//file은 필수 사항이 아니므로 없을 경우가 있다 미관상 null로 표기되는 것을 삭제
	if(fileName == null)
		fileName = "";
	
	//조회수 증가 로직
	int hit = center.getHit();
	hit++;
	centerDao.incrementHit(hit, num);
	
	//좌측 탭을 통해 다른 기능창으로 넘어갈때 pageNumber전송해줘야함.
	String pageNumber = request.getParameter("pageNumber");
	
%>
<div id="img_cen"></div>
<nav id="nav_sub">
	<ul>
		<li><a href="list.jsp?pageNumber=<%=pageNumber %>">게시글 목록</a></li>
		<li><a href="write.jsp">게시글 작성</a></li>
		<li><a href="delete.jsp?num=<%=num%>">게시글 삭제</a></li>
		<li><a href="modify.jsp?pageNumber=<%=pageNumber %>&num=<%=num%>">게시글 수정</a></li>
	</ul>
</nav>

<article id="article_sub">
	<h1>게시글 확인</h1>
	<div id="view_title">
		<div class="view_title1"><%=subject %></div>
		<div class="view_title2"><%=id %> | 조회수: <%=hit %> | <%=writeTime %></div>
	</div>
	<div id="view_content"><%=content %></div>

	<div id="view_file">첨부 파일 : <a href="fileDown.jsp?fileName=<%=fileName %>"><%=fileName %></a></div>

	<div id="center_button">
		<a href="list.jsp?pageNumber=<%=pageNumber %>"><img src="/care/images/list.png"></a>
		<a href="modify.jsp?pageNumber=<%=pageNumber %>&num=<%=num%>"><img src="/care/images/modify.png"></a>
		<a href="delete.jsp?num=<%=num%>"><img src="/care/images/delete.png"></a>
		<a href="write.jsp"><img src="/care/images/write.png"></a>
	</div>
</article>
<%@ include file="../footer.jsp"%>