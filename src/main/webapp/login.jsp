<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>    

<title>Hoyeon's BBS</title>
</head>
<body>
	<div class="wrapper">
		<div id="formContent">
			<div class="userImage">
				<img src="images/user.png" alt="user" />
			</div>
			<form action="loginok.jsp" name="login" method="post">
				<input type="text" id="userid" name="userid" placeholder="아이디"/>
				<input type="password" id="userpass" name="userpass" placeholder="비밀번호"/>
				<button type="submit" class="btn-login">로 그 인</button>
			</form>
			<div id="formfooter">
				<a href="findid.jsp" class="underlinehover">아이디/비밀번호 찾기</a>
			</div>
		</div>
	</div>
