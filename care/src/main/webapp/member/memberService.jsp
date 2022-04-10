<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String confirmPw = request.getParameter("confirmPw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	
	if(id == "" || pw == "" || confirmPw == "" || name == ""){
		out.print("<script>alert('id/pw/pw확인/이름은 필수 정보입니다.'); history.back();</script>");
		return;
	}
	if(! pw.equals(confirmPw)){   
		out.print("<script>alert('두 비밀번호가 다릅니다.'); history.back();</script>");
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
	member.setConfirmPw(confirmPw);
	member.setName(name);
	member.setEmail(email);
	member.setPhone(phone);
	member.setAddress(address);
	
	memberDao.insert(member);
	
	%>

	<script>alert('회원가입 완료'); location.href='login.jsp';</script>
    
