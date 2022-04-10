<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if(id == "" || pw == ""){
		out.print("<script>alert('필수 정보입니다.'); history.back();</script>");
		return;
	}
	
	MemberDAO memberDao = new MemberDAO();
	MemberDTO member = memberDao.selectId(id);
	
	if(member != null && member.getPw().equals(pw)){
		session.setAttribute("id", id);
		session.setAttribute("name", member.getName());
		session.setAttribute("email", member.getEmail());
		session.setAttribute("phone", member.getPhone());
		session.setAttribute("address", member.getAddress());
		out.print("<script>alert('" + id + "님 환영합니다.');location.href='../index.jsp';</script>");
	}else{
		out.print("<script>alert('아이디/비밀번호를 확인 후 다시 입력하세요.'); history.back();</script>");
	}
%>