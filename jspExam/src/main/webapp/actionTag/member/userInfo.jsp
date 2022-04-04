<%@page import="actionTag.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userinfo</title>
</head>
<body>
	<jsp:include page="/actionTag/default/header.jsp"/>
	<jsp:useBean id="memberDao" class="actionTag.MemberDAO"/>
	<jsp:useBean id="memberDto" class="actionTag.MemberDTO"/>
	<jsp:setProperty property="id" name="memberDto"/>

	<%
	MemberDTO member = memberDao.selectId(memberDto.getId());
	%>
	
	<div align="center">
		<h1>개인 정보</h1>
		아이디 : <%=member.getId() %><br>
		비밀번호 : <%=member.getPwd1() %><br>
		이름 : <%=member.getName() %><br>
		주소 : <%=member.getAddr() %><br>
		전화번호 : <%=member.getTel() %>
	</div>
	<jsp:include page="../default/footer.jsp"/>
</body>
</html>