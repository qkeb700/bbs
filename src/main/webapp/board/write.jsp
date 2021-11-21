<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<%@ include file="/include/header.jsp" %>
<link rel="stylesheet" href="/css/plugin/summernote-bs4.css" />
</head>
<body>
<%
	Calendar time = Calendar.getInstance();
	SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String now = sd.format(time.getTime());
	String uip = request.getRemoteAddr();
%>
<div class="container-fluid">
	<div class="row">
		<div class="left">
			<div class="aside">
				<a href="#" class="brand">Hoyeon's BBS</a>				
			</div>
			<%@ include file="/include/aside.jsp" %>
		</div>
		<div class="main">
			<%@ include file="/topnav.jsp" %>
			
			<div class="container mb-5">
				<h1 class="text-center my-4">게시판 작성</h1>
				<form action="writeok.jsp" id="writeform" name="writeform" method="post" enctype="multipart/form-data">
					<input type="hidden" name="wdate" value="<%=now %>" />
					<input type="hidden" name="udate" value="<%=now %>" />
					<input type="hidden" name="uip" value="<%=uip %>" />
					<input type="hidden" name="category" value="<%=cnum %>" />
					<ul class="write-title">
					<% if(userid == null){ %>
						<li class="row">
							<label for="username" class="col-2 label">이름</label>
							<div class="col-4 py-3">
								<input type="text" class="form-control" name="username" id="username" placeholder="이름"/>							
							</div>
						</li>
						<li class="row">
							<label for="userpass" class="col-2 label">비밀번호</label>
							<div class="col-4 py-3">
								<input type="password" class="form-control" name="userpass" id="userpass" placeholder="비밀번호"/>							
							</div>
						</li>
						<%}else{ %>
							<input type="hidden" name="userid" value="<%=userid %>" />
						<%} %>
						<li class="row">
				          <label class="col-2 label" for="title">제목</label>
				          <div class="col-10 py-3">
				            <input type="text" class="form-control" name="subject" id="subject" placeholder="제목">
				          </div>
				        </li>
				        <li class="content py-4">
				          <textarea name="content" id="" class="form-control contents" placeholder="내용"></textarea>
				        </li>
				        <li class="row">
				        	<label for="file1" class="col-2 label">파일첨부1</label>
				        	<div class="col-10 py-3">
					        	<input type="file" class="form-control" name="file1" id="file1" />        	
				        	</div>
				        </li>
				        <li class="row">
				        	<label for="file2" class="col-2 label">파일첨부2</label>
				        	<div class="col-10 py-3">
					        	<input type="file" class="form-control" name="file2" id="file2" />        	
				        	</div>
				        </li>
				        <li class="py-1 ml-3">
				        	<label for=""><input type="checkbox" id="sec01" name="sec01" value="1"> 비밀글</label>
				        	<input type="hidden" name="sec" id="sec" />
				        </li>
					</ul>
					<div class="btn-area py-4 text-center">
				        <button type="reset" class="btn btn-danger">취소</button>
				        <button type="submit" class="btn btn-dark">전송</button>
				    </div>
				</form>
			</div>
			
		</div>
	</div>
</div>

<%@ include file="/include/footer.jsp" %>
