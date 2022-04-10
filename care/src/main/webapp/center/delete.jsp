<%@page import="java.io.File"%>
<%@page import="center.CenterDTO"%>
<%@page import="center.CenterDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String n = request.getParameter("num");
	if(n == null || n == ""){
		out.print("<script>alert('게시글을 확인하고 삭제하세요'); location.href='list.jsp';</script>");
		return;
	}
	int num = 0;
	try{
		num = Integer.parseInt(n);
	}catch(NumberFormatException e){
		out.print("<script>location.href='list.jsp';</script>");
		return;
	}
	
	String id = (String)session.getAttribute("id");
	if(session.getAttribute("id") == null){
		out.print("<script>alert('로그인 후 이용하세요.'); location.href='/care/member/login.jsp';</script>");
		return;
	}
	
	CenterDAO centerDao = new CenterDAO();
	CenterDTO center = centerDao.selectNum(num);
	if(center == null){
		out.print("<script>location.href='list.jsp';</script>");
		return;
	}
	
	if(id.equals(center.getId()) == false){
		out.print("<script>alert('작성자만 게시글을 삭제할 수 있습니다.'); location.href='list.jsp';</script>");
		return;
	}
	
	String fileName = center.getFileName();
	String saveFolder = "C:\\javas\\upload\\" + id;
	File file = new File(saveFolder + "/" + fileName);
	if(file.exists())
		file.delete();
	
	centerDao.delete(num);
%>
<script>alert('게시글 삭제 완료'); location.href='list.jsp';</script>









