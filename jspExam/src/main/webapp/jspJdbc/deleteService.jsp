<%@page import="jspJdbc.MemberDTO"%>
<%@page import="jspJdbc.MemberDAO"%>
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
	
	if( pw == "" ){
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
	MemberDTO member = memberDao.selectId(id);
	
	if(member != null && member.getPw().equals(pw)){
		memberDao.delete(member);
		session.invalidate();
		out.print("<script>alert('" + id + " 계정 삭제 완료');location.href='index.jsp';</script>");
	}else{
		out.print("<script>alert('비밀번호를 확인 후 다시 입력하세요.'); history.back();</script>");
	}
	
%>