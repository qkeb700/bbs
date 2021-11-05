<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %> 

<%--
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
--%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<h1 class="text-center py-5">회원가입</h3>
	<div class="container">
		<form action="joinok.jsp" method="post" id="joinform" name="joinform">
			<div class="form-group">
				<label for="userid">아이디</label>
				<div class="row">
					<div class="col-9">
						<input type="text" name="userid" id="userid" placeholder="아이디" class="form-control" />					
					</div>
					<div class="col-3">
						<button type="button" class="btn btn-success" id="checkid">중복확인</button>
					</div>
				</div>			
			</div>
			<div class="form-group">
				<label for="userpass">비밀번호</label>
				<input type="password" name="userpass" id="userpass" placeholder="비밀번호" class="form-control" />					
			</div>
			<div class="form-group">
				<label for="userpass2">비밀번호확인</label>
				<input type="password" name="userpass2" id="userpass2" placeholder="비밀번호확인" class="form-control" />					
			</div>
			<div class="form-group">
				<label for="username">이름</label>
				<input type="text" name="username" id="username" placeholder="이름" class="form-control" />					
			</div>
			<div class="form-group">
				<label for="userpass">이메일</label>
				<input type="text" name="useremail" id="useremail" placeholder="이메일" class="form-control" />					
			</div>
			<div class="form-group">
				<label for="usertel">전화번호</label>
				<div class="row">
					<div class="col form-group">
						<input type="number" name="tel1" id="tel1" class="form-control" />										
					</div> -
					<div class="col form-group">
						<input type="number" name="tel2" id="tel2" class="form-control" />					
					</div> -
					<div class="col form-group">
						<input type="number" name="tel3" id="tel3" class="form-control" />					
					</div>
				</div>
			</div>
			<div class="form-group">
				<input type="radio" name="gender" value="여자" checked />
				<span class="mr-3">여자</span>
				<input type="radio" name="gender" value="남자"/>
				<span>남자</span>
			</div>
			<div class="buttonbox border-top py-4">
				<button type="submit" class="btn btn-primary form-control">LOGIN</button>
			</div>
		</form>
	</div>
	
<%@ include file="include/footer.jsp" %>