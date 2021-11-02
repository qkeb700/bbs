<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>    
<head>
<title>Hoyeon's BBS</title>
</head>
<body>
	<h1 class="text-center my-5">회원가입</h1>
	<div class="container">
		<form action="join02.jsp" name="joinform" id="joinform">
			<div class="form-group">
				<label for="all">
					<input type="checkboxk" name="all" id="all" value="ok" />
					<span class="cbox"></span>
					이용약관, 개인정보 수집 및 이용, 위치정보 이용약관(선택)에 모두 동의합니다.
				</label>
			</div>
		</form>
	</div>
</body>
</html>