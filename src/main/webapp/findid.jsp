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
			<ul class="nav nav-tabs">
				<li class="nav-item">
					<a href="#ufindid" data-toggle="tab" class="nav-link active">아이디 찾기</a>
				</li>
				<li class="nav-item">
					<a href="#ufindpwd" data-toggle="tab" class="nav-link">비밀번호 찾기</a>
				</li>				
			</ul>
			<div class="tab-content">
				<div id="ufindid" class="py-5 container-fluid tab-pane active">
					<div class="findid">
						<form action="include/findidok.jsp" id="findidform" method="post" >
							<input type="text" name="username" id="username" placeholder="이름" />
							<input type="text" name="useremail" id="useremail" placeholder="이메일" />
							<button type="submit" > 아이디찾기 </button>
						</form>					
					</div>
				</div>
				<div id="ufindpwd" class="py-5 container-fluid tab-pane fade">	
					<div class="findpwd">
						<form action="include/findpwdok.jsp" id="findpwdform" method="post" >
							<input type="text" name="userid" id="userid" placeholder="아이디" />
							<input type="text" name="useremail" id="useremail" placeholder="이메일" />
							<button type="submit" > 비밀번호 찾기 </button>
						</form>					
					</div>
				</div>
			</div>
		</div>
	</div>
<%@ include file="include/footer.jsp"%>