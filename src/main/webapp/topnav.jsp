<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userid = null;
	userid = (String)session.getAttribute("userid");
%>

<nav class="nav d-flex justify-content-between">
	<form action="">
		<input type="search" name="t-search" id="t-search" />
		<a href="#"><i class="fas fa-search"></i></a>
	</form>
	<div class="member">
<%
	if(userid == null){
		out.println("<a href='/bbsSelf/login.jsp'>로그인</a> | <a href='/bbsSelf/join.jsp'>회원가입</a>");
	} else {
		out.println("환엽하니다. " + userid + "님 | <a href='logout.jsp'>로그아웃</a>");
	}
%>		
	</div>
</nav>