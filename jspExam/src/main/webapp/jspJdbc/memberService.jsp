<%@page import="jspJdbc.MemberDTO"%>
<%@page import="jspJdbc.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String confirmPw = request.getParameter("confirmPw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	
	if(id == "" || pw == "" || name == ""){
		out.print("<script>alert('필수 정보입니다.'); history.back();</script>");
		return;
	}
	out.print("비밀번호 : " + pw + "<br>");
	out.print("비밀번호 확인 : " + confirmPw + "<br>");
	
	if(! pw.equals(confirmPw)){
%>
		<script>alert('두 비밀번호가 다릅니다.'); history.back();</script>
<%		
		return;
	}
	MemberDAO memberDao = new MemberDAO();
	MemberDTO member = memberDao.selectId(id);
	
	if(member != null){
		out.print("<script>alert('중복 아이디입니다.'); history.back();</script>");
		return;
	}
	member = new MemberDTO();
	member.setId(id);
	member.setPw(pw);
	member.setName(name);
	member.setEmail(email);
	
	memberDao.insert(member);
%>
<script>alert('회원가입 완료'); location.href='index.jsp';</script>