<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<link rel="stylesheet" href="css/login.css" />
<title>Hoyeon's BBS</title>
</head>
<body>
	<div class="container-fluid">
		
		<div class="row">
			<div class="left">
				<div class="aside">
					<a href="#" class="brand">Hoyeon's BBS</a>				
				</div>
				<nav>
					<ul class="aside-nav">
						<li><a href="#">메뉴1</a></li>
						<li><a href="#">메뉴2</a></li>
						<li><a href="#">메뉴3</a></li>
						<li><a href="#">메뉴4</a></li>
						<li><a href="#">메뉴5</a></li>
					</ul>
				</nav>
			</div>
			<div class="main">
				
<%@ include file="topnav.jsp" %>
<% if(userid != null){ %>
<script>
alert("이미 로그인 하셨습니다.");
history.back();
</script>
<% } %>
<div class="wrapper px-5" id="login">
	<div id="formContent">
		<div class="first">
			<img src="images/user.png" class="loginimg">
		</div>
		
		<!-- 아이디, 비번찾기 -->
		<ul class="nav nav-tabs">
			<li class="nav-item">
				<a class="nav-link active" data-toggle="tab" href="#ufindid">아이디 찾기</a>
			</li>
			<li class="nav-item">
				<a class="nav-link " data-toggle="tab" href="#ufindpwd">비밀번호 찾기</a>
			</li>
		</ul>
		<!-- form -->
		<div class="tab-content">
			<div id="ufindid" class="container-fluid tab-pane active">
				<div class="findid py-5">
					<form action="include/findidok.jsp" name="findidform" id="findidform" method="post">
						<input type="text" id="username" class="second" name="username" placeholder="이름"/>
						<input type="text" id="useremail" class="third" name="useremail" placeholder="이메일"/>
						<button type="submit" class="fourth"> 아이디찾기 </button>
					</form>					
				</div>
			</div>
			<div id="findpwd" class="container-fluid tab-pane fade">
				<div class="findid py-5">
					<form action="include/findpwdok.jsp" name="findpwdform" id="findpwdform" method="post">
						<input type="text" id="userid" class="second" name="userid" placeholder="아이디"/>
						<input type="password" id="useremail" class="third" name="useremail" placeholder="이메일"/>
						<button type="submit" class="fourth"> 비밀번호 찾기 </button>
					</form>					
				</div>
			</div>	
		</div>
		
		
	</div>
</div>

			</div>
		</div>
	</div>
			

<%@ include file="include/footer.jsp" %>