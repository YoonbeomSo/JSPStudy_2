<%@page import="java.nio.charset.StandardCharsets"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String fileName = request.getParameter("fileName");

	String id = (String)session.getAttribute("id");
	if(session.getAttribute("id") == null){
		out.print("<script>alert('로그인 후 이용하세요.'); location.href='/care/member/login.jsp';</script>");
		return;
	}

	String saveFolder = "C:\\javas\\upload\\" + id;
	
	File file = new File(saveFolder + "/" + fileName);
	FileInputStream fileInputStream = new FileInputStream(file);
	
	out.clear();
	ServletOutputStream servletOutputStream = response.getOutputStream();
	
	byte b[] = new byte[1024];
	response.setContentType("application/octet-stream");
	response.setHeader("Content-Disposition", "attachment;filename=" + URLEncoder.encode(fileName, "UTF-8"));
	
	while(true){
		int currentDataSize = fileInputStream.read(b, 0, b.length); // 서버에 위치한 파일 읽기
		if(currentDataSize == -1)
			break;
		servletOutputStream.write(b, 0, currentDataSize); // 클라이언트에게 송신
	}
	
	fileInputStream.close();
	
%>