<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>    
<%
	String ok = null;
	String geo = null;
	ok = request.getParameter("yak01");
	geo = request.getParameter("yak03");
	
	if(ok == null){
%>
	<script>
		alert("비정상적으로 접속하셨습니다.");
		window.location.href="join.jsp";
	</script>
<%		
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>

<%@ include file="include/footer.jsp %>