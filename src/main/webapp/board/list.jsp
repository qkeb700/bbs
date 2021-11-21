<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>	
<%@ include file="/include/header.jsp"%>
<%
	String sql1 ="select count(*) from bbs01 where category = ?";
	String sql2 = "select * from bbs01 where category = ? order by num desc";
	
	PreparedStatement pstmt1 = null;
	ResultSet rs1 = null;
	PreparedStatement pstmt2 = null;
	ResultSet rs2 = null;
	
	pstmt1 = conn.prepareStatement(sql1);
	pstmt1.setString(1, cnum);
	rs1 = pstmt1.executeQuery();
	
	pstmt2 = conn.prepareStatement(sql2);
	pstmt2.setString(1, cnum);
	rs2 = pstmt2.executeQuery();
	
	int cot = 0;
	
	while(rs1.next()){
		cot = rs1.getInt(1);
	}
	
%>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1 class="text-center my-5">연습용 게시판</h1>
		<p>전체 게시글 : <%=cot %></p>
		<table class="table table-hover">
			<colgroup class="mobile-hidden">
				<col width='55'>
				<col>
				<col width='120'>
				<col width='120'>
				<col width='80'>
			</colgroup>
			<thead>
				<tr>
					<th class="mobile-hidden">번호</th>
					<th class="mobile-hidden">제목</th>
					<th class="mobile-hidden">글쓴이</th>
					<th class="mobile-hidden">날짜</th>
					<th class="mobile-hidden">조회수</th>
				</tr>
			</thead>
			<tbody>
			<%
				while(rs2.next()){			
					String date = rs2.getString("udate").substring(0,10);
			%>
				<tr>
					<td class="mobile-hidden"><%=rs2.getInt("num") %></td>
					<td>
						<a href="board/view.jsp?num=<%=rs2.getInt("num") %>?cnum=<%=cnum %>" class="icon pc-hidden"><i class="fas fa-user-tie"></i></a> 
						<a href="board/view.jsp?num=<%=rs2.getInt("num") %>?cnum=<%=cnum %>" class="utxt pc-hidden"><%=rs2.getString("username") %> [<%=date %>]</a> 
						<a href="board/view.jsp?num=<%=rs2.getInt("num") %>?cnum=<%=cnum %>"><%=rs2.getString("subject") %>.</a>
					</td>
					<td class="mobile-hidden"><a href="board/view.jsp?num=<%=rs2.getInt("num") %>"><%=rs2.getString("username") %></a></td>
					<td class="mobile-hidden"><%=date %></td>
					<td class="mobile-hidden"><%=rs2.getInt("ct") %></td>
				</tr>
			<%
				}
			%>
			</tbody>
		</table>
		<div class="row">
			<div class="col-12 col-md-4 my-3">
				<form>
					<div class="input-group">
						<div class="input-group-prepend">
							<button type="button"
								class="btn btn-outline-secondary dropdown-toggle"
								data-toggle="dropdown">제목+내용</button>
							<div class="dropdown-menu">
								<a href="view.html" class="dropdown-item">이름</a> <a
									href="view.html" class="dropdown-item">제목</a> <a
									href="view.html" class="dropdown-item">내용</a> <a
									href="view.html" class="dropdown-item">제목+내용</a>
							</div>
						</div>
						<input type="text" class="form-control user-form" placeholder="검색">
						<div class="input-group-append">
							<button class="btn btn-dark" type="button">검색</button>
						</div>
					</div>
				</form>
			</div>
			 <div class="col-12 col-md-8 my-3 text-right">
        		<a href="board/write.jsp?num=<%=request.getParameter("num")%>"><button type="button" class="btn btn-dark px-4 btn-write">쓰기</button></a>
      		</div>
		</div>
		<ul class="pagination my-3 justify-content-center">
	      <li class="page-item active"><a href="list.html" class="page-link">&lt;&lt;</a></li>
	      <li class="page-item"><a href="list.html" class="page-link">1</a></li>
	      <li class="page-item"><a href="list.html" class="page-link">2</a></li>
	      <li class="page-item"><a href="list.html" class="page-link">3</a></li>
	      <li class="page-item"><a href="list.html" class="page-link">4</a></li>
	      <li class="page-item"><a href="list.html" class="page-link">5</a></li>
	      <li class="page-item"><a href="list.html" class="page-link">6</a></li>
	      <li class="page-item"><a href="list.html" class="page-link">7</a></li>
	      <li class="page-item"><a href="list.html" class="page-link">8</a></li>
	      <li class="page-item"><a href="list.html" class="page-link">&gt;&gt;</a></li>
	    </ul>
	</div>
</body>
</html>