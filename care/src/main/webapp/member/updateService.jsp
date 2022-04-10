<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String id = (String)session.getAttribute("id");
	String pw = request.getParameter("pw");
	String confirmPw = request.getParameter("confirmPw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	
	if(pw == "" || confirmPw == "" || name == ""){
		out.print("<script>alert('비밀번호, 비밀번호 확인, 이름은 필수 정보입니다.'); history.back();</script>");
		return;
	}
	if(! pw.equals(confirmPw)){   
		out.print("<script>alert('두 비밀번호가 다릅니다.'); history.back();</script>");
		return;
	}
	
	MemberDAO memberDao = new MemberDAO();
	MemberDTO member = new MemberDTO();
	
	member.setId(id);
	member.setPw(pw);
	member.setName(name);
	member.setEmail(email);
	member.setPhone(phone);
	member.setAddress(address);
	
	memberDao.update(member);
	
	session.removeAttribute("id");
	session.removeAttribute("name");
	session.removeAttribute("email");
	session.removeAttribute("phone");
	session.removeAttribute("address");
	
	
	session.setAttribute("id", member.getId());
	session.setAttribute("name", member.getName());
	session.setAttribute("email", member.getEmail());
	session.setAttribute("phone", member.getPhone());
	session.setAttribute("address", member.getAddress());
	
	
%>
<script>alert('회원 정보 수정 완료'); location.href='login.jsp';</script>
    
