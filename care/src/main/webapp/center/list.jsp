<%@page import="center.CenterList"%>
<%@page import="center.CenterDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="center.CenterDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<%
	request.setCharacterEncoding("utf-8");

	String pageNumber = request.getParameter("pageNumber");
	String mode = request.getParameter("mode");
	String find = request.getParameter("find");
	String data = request.getParameter("data");
	
	//게시글을 선택하지 않고 수정에서 목록으로 넘어오는 경우 오류 방지
	if(pageNumber == null){
		pageNumber = "1";
	}
	
	CenterDAO centerDao = new CenterDAO();
	ArrayList<CenterDTO> list = null;
	if(mode != null && mode.equals("search"))	{
		if(data == "" || data == null){
			out.print("<script>alert('검색어를 입력하세요.');history.back();</script>");
			return;
		}
		list = centerDao.search(find, data);
	}else
		list = centerDao.selectAll();
	
	CenterList cl = new CenterList();
	
	cl.setPageNumber(pageNumber);
	cl.setTotalRecord(list.size());
	
	
%>
<div id="img_cen"></div>
<nav id="nav_sub">
	<ul>
		<li><a href="list.jsp?pageNumber=<%=pageNumber %>">게시글 목록</a></li>
		<li><a href="write.jsp">게시글 작성</a></li>
		<li><a href="delete.jsp">게시글 삭제</a></li>
		<li><a href="modify.jsp?pageNumber=<%=pageNumber %>">게시글 수정</a></li>
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
		 <%
		 	for(int i = cl.getStart(); i < cl.getScroll() + cl.getStart() && i < cl.getTotalRecord() ; i++) { 
		 		CenterDTO center = list.get(i);
		 %>
		 
			 <tr>
			 	<td><%=center.getNum() %></td>
			 	<td class="subject">
			 		<!-- 제목 클릭시 해당 게시물의 번호와 페이지번호를 view.jsp로 함께 전달함 -->
			 		<a href="view.jsp?num=<%=center.getNum() %>&pageNumber=<%=cl.getPageNumber()%>"><%=center.getSubject() %></a>
			 	</td>
			 	<td><%=center.getId() %></td>
			 	<td><%=center.getWriteTime() %></td>
			 	<td><%=center.getHit() %></td>
			</tr>
		<%} %>
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
		
		<!-- 게시글 수에 따라 페이지 번호를 설정하는 로직 -->
		<div class="clear"></div>
		<div id="page_control" style="text-decoration: none">
			<%
				if(cl.getPageNumber() <= 1)
					out.print("<a href='#'>Prev </a>");
				else{
					int tmp = cl.getPageNumber() - 1;
					out.print("<a href='list.jsp?pageNumber=" +tmp+ "&mode="+ mode+ "&find=" + find+"&data="+data+"'>Prev </a>");
				}
				
				for(int i = 1; i <= cl.getTotalPage(); i++){
					if(cl.getPageNumber() == i)
						out.print("<b> " + i + " </b>");
					else
					out.print("<a href='list.jsp?pageNumber=" +i+ "&mode="+ mode+ "&find=" + find+"&data="+data+"'> "+i+" </a>");
				}
			
			
				if(cl.getPageNumber() >= cl.getTotalPage())
					out.print("<a href='#'>Next </a>");
				else{
					int tmp = cl.getPageNumber() + 1;
					out.print("<a href='list.jsp?pageNumber=" +tmp+ "&mode="+ mode+ "&find=" + find+"&data="+data+"'>Next </a>");
				}
			%>	
			
		</div>
		<div id="center_button">
			<a href="write.jsp"> <img src="/care/images/write.png"> </a>
		</div>
</article>
<%@ include file="../footer.jsp"%>