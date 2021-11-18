<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, bbsSelf.DBClass" %>
<%@ include file="/include/header.jsp" %>


<nav>
	<ul class="aside-nav">
<%
	String cnum = request.getParameter("cnum");
	if(cnum == null){
		cnum = "1";
	}
	PreparedStatement pstmt = null;
	Connection conn = null;
	ResultSet rs = null;
	String sql = "select * from category01 order by num asc";
	String query = "select * from category01 where num = ?";
	
	try{
		conn = DBClass.getMySQLConnection();
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		PreparedStatement pt = conn.prepareStatement(query);
		pt.setString(1, cnum);
		ResultSet result = pt.executeQuery();
		
		String title = null;
		while(result.next()){
			title = result.getString("category");
		}
		
		while(rs.next()){
			out.println("<li><a style='list-style-type:none' href='index.jsp?cnum=" + rs.getInt("num") + "'>" + rs.getString("category") + "</a></li>");
		}
		result.close();
		pt.close();
		rs.close();
		pstmt.close();
	}catch(Exception e){
		e.printStackTrace();
	}
%>	
	</ul>
</nav>