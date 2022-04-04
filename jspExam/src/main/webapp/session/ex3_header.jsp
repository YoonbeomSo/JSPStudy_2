<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1 style="color:skyblue">CARE LAB</h1>
<h3>사이트에 방문해주셔서 감사합니다.</h3>

<%
	boolean check = true;

	Cookie[] cookies = request.getCookies();
	if(cookies != null){
		for(int i = 0; i < cookies.length; i++){
			if(cookies[i].getName().equals("popup")){
				check = false;
			}
		}
	}
	if(check == true){
%>
	<script>
		window.open('ex3_popup.jsp', 'new',  'width=450,height=300,top=300,left=500');
	</script>
<%	} %>