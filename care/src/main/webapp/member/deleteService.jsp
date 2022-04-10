<%@page import="member.MemberCheck"%>
<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String id = (String)session.getAttribute("id");
	String pw = request.getParameter("pw");
	String confirmPw = request.getParameter("confirmPw");
	
	boolean check = MemberCheck.emptyCheck(pw, confirmPw);
	
	if(check){
		out.print("<script>alert('필수 정보입니다.'); history.back();</script>");
		return;
	}
	
	check = MemberCheck.pwEquals(pw, confirmPw);
	if(check){
		out.print("<script>alert('두 비밀번호가 다릅니다.'); history.back();</script>");
		return;
	}
	
	MemberDAO memberDao = new MemberDAO();
	MemberDTO member = memberDao.selectId(id);
	
	if(member != null && member.getPw().equals(pw)){
		memberDao.delete(member);
		session.invalidate();
		out.print("<script>alert('" + id + " 계정 삭제 완료'); location.href='../index.jsp';</script>");
	}else{
		out.print("<script>alert('비밀번호를 확인 후 다시 입력하세요.'); history.back();</script>");
	}
%>