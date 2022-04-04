<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="obj" class="actionTag.Ex4" />

<%-- 
<jsp:setProperty property="id" name="obj"/>
<jsp:setProperty property="pw" name="obj"/>
<jsp:setProperty property="name" name="obj"/>
<jsp:setProperty property="email" name="obj"/> 
--%>
<jsp:setProperty property="*" name="obj"/>

아이디 : <jsp:getProperty property="id" name="obj"/> <br>
비밀번호 : <jsp:getProperty property="pw" name="obj"/> <br>
이름 : <jsp:getProperty property="name" name="obj"/> <br>
이메일 : <jsp:getProperty property="email" name="obj"/> <br>