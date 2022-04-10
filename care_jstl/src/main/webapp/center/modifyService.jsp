<%@page import="java.io.File"%>
<%@page import="center.CenterDTO"%>
<%@page import="center.CenterDAO"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("id") == null){
		out.print("<script>alert('로그인 후 이용하세요.');location.href='/care/member/login.jsp';</script>");
		return;
	}
	String saveFolder = "C:\\javas\\upload\\" + session.getAttribute("id");
	int maxSize = 1024 * 1024 * 100;
	MultipartRequest multi = new MultipartRequest(request, saveFolder, maxSize, "UTF-8");

	String n = multi.getParameter("num");
	if(n == null || n == ""){
		out.print("<script>location.href='list.jsp';</script>");
		return;
	}
	int num = 0;
	try{
		num = Integer.parseInt(n);
	}catch(NumberFormatException e){
		out.print("<script>location.href='list.jsp';</script>");
		return;
	}
	
	String subject = multi.getParameter("subject");
	String content = multi.getParameter("content");
	String fileName = multi.getFilesystemName("uploadFileName");
	/* 	
	out.print("num : " + num + "<br>");
	out.print("subject : " + subject + "<br>");
	out.print("content : " + content + "<br>");
	out.print("fileName : " + fileName + "<br><br>");
	*/
	CenterDAO centerDao = new CenterDAO();
	CenterDTO center = centerDao.selectNum(num);
	if(center == null){
		out.print("<script>location.href='list.jsp';</script>");
		return;
	}
	center.setSubject(subject);
	center.setContent(content);
	
	if(fileName != null){
		String deletFileName = center.getFileName();
		center.setFileName(fileName);
		
		File file = new File(saveFolder + "/" + deletFileName);
		if(file.exists())
			file.delete();
	}
	
	centerDao.modify(center); 
	
%>
<script>alert('게시글 수정 완료'); location.href='list.jsp';</script>











