<%@page import="session.MemberDTO"%>
<%@page import="session.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String id = (String)session.getAttribute("id");
	if(id == null || id == ""){
		out.print("<script>alert('로그인 후 사용할 수 있습니다.'); location.href='login.jsp';</script>");
		return;
	}
	
	String pw = request.getParameter("pw");
	String confirmPw = request.getParameter("confirmPw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	
	if( pw == "" || name == ""){
		out.print("<script>alert('필수 정보입니다.'); history.back();</script>");
		return;
	}
	
	if(! pw.equals(confirmPw)){
%>
		<script>alert('두 비밀번호가 다릅니다.'); history.back();</script>
<%		
		return;
	}
	
	MemberDAO memberDao = new MemberDAO();
	
	MemberDTO member = new MemberDTO();
	member.setId(id);
	member.setPw(pw);
	member.setName(name);
	member.setEmail(email);
	
	memberDao.update(member);
%>
<script>alert('회원수정 완료'); location.href='index.jsp';</script>