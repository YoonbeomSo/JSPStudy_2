<%@page import="center.CenterDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="center.CenterDTO"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String subject = request.getParameter("subject");
	String content = request.getParameter("content");
	String uploadFileName = request.getParameter("uploadFileName");
	
	out.print("subject : " + subject + "<br>");
	out.print("content : " + content + "<br>");
	out.print("uploadFileName : " + uploadFileName + "<br><br>");
	
	String id = (String)session.getAttribute("id");
	if(session.getAttribute("id") == null){
		out.print("<script>alert('로그인 후 이용하세요.'); location.href='/care/member/login.jsp';</script>");
		return;
	}
	//파일이 저장될 폴더 지정
 	String saveFolder = "C:\\javas\\upload\\" + id; 
	File file = new File(saveFolder);
	
	//지정한 폴더가 없다면 폴더 생성
	if(file.exists() == false)
		file.mkdirs();
	
	//파일의 크기를 100MB로 제한
	int maxSize = 1024 * 1024 * 100;
	//MultipartRequest(request 객체, 저장될 서버 경로, 파일 최대 크기, 인코딩 방식) -> MultipartRequest 생성 시 파일 업로드 완료
	MultipartRequest multi = new MultipartRequest(request, saveFolder, maxSize, "utf-8");
	
	//enctype을 "multipart/form-data"로 선언하고 submit한 데이터들은 request객체가 아닌 MultipartRequest객체로 불러와야 한다.
	subject = multi.getParameter("subject");
	content = multi.getParameter("content");
	// 전송받은 데이터가 파일일 경우 getOriginalFileName()으로 파일의 원본이름을 받아올 수 있다.
	String original = multi.getOriginalFileName("uploadFileName");
	// 전송받은 데이터가 파일일 경우 getFilesystemName()으로 파일 이름을 받아올 수 있다.
	uploadFileName  = multi.getFilesystemName("uploadFileName");
	
	
	out.print("subject : " + subject + "<br>");
	out.print("content : " + content + "<br>");
	out.print("original(원본 파일 이름) : " + original + "<br>");
	out.print("uploadFileName(업로드 후 파일 이름) : " + uploadFileName + "<br><br>");
	
	CenterDTO center = new CenterDTO();
	center.setId(id);
	center.setSubject(subject);
	center.setContent(content);
	center.setFileName(uploadFileName);
	center.setHit(0);
	
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	String writeTime = sdf.format(date);
	center.setWriteTime(writeTime);	
	
	CenterDAO centerDao = new CenterDAO();
	centerDao.insert(center);
	
%>
<script>alert('게시글 작성 완료'); location.href='list.jsp';</script>




