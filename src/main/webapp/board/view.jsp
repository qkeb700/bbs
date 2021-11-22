<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ include file="/include/header.jsp" %>    
<%--
	String sql1 = "select * from bbs01 where num = ?";
	PreparedStatement pstmt1 = null;
	ResultSet rs1 = null;
	pstmt1 = conn.prepareStatement(sql1);
	pstmt1.setString(1, request.getParameter("num"));
	rs1 = pstmt1.executeQuery();
	
--%>
</head>
<body>
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
					<h1 class="text-center my-4">연습용 게시판</h1>
					<ul class="view-title bg-white">
						<li>
							<label for="" class="bg-white">제목</label> 제목 
						</li>
						<li>
					        <label class="bg-white" for="">작성일</label> <%=rs1.getString("udate") %>
					    </li>
					    <li>
					        <label class="bg-white" for="">조회수</label> <%=rs1.getInt("ct") %>
					    </li>
					    <li class="content bg-white">
					      	<div class="text-right"><%=file1 %> <%=file2 %></div>
					        <%=rs1.getString("content") %>
					    </li>
					    <li>
				        	<label class="bg-white" for="">작성자</label> <%=rs1.getString("username") %>
				        </li>
					</ul>
				</div>
				
			</div>
		</div>
	</div>

<%@ include file="/include/footer.jsp" %>