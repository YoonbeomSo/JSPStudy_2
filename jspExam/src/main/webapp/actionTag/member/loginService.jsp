<%@page import="actionTag.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <jsp:useBean id="member" class="actionTag.MemberDTO"></jsp:useBean>
    <jsp:setProperty property="*" name="member"/>
    
    <jsp:useBean id="memberDao" class="actionTag.MemberDAO"></jsp:useBean>
    
    <%
    	if(member.getId() == "" || member.getPwd1() == ""){
    		out.print("<script>alert('필수 정보입니다.'); history.back();</script>");
    		return;
    	}
    
    	MemberDTO check = memberDao.selectId(member.getId());
    	if(check!=null && check.getPwd1().equals(member.getPwd1())){
    		session.setAttribute("id", member.getId());
    		response.sendRedirect("index.jsp");
    	}else{
    		out.print("<script>alert('아이디/비밀번호를 확인하세요.'); history.back();</script>");
    	}
    %>