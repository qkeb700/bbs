<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, bbs.DBClass" %>

<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	Connection conn = null;
	String sql = "select * from category01 order by num asc";
	try{
		conn = DBClass.getMYSQLConnection();
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		
		while(rs.next()){
			out.println("<li><a href='?cnum="+rs.getInt("num") +"'>" + rs.getString("category") + "</a></li>");				
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	}
%>

				<nav>
					<ul class="aside-nav">
						<li><a href="#">메뉴1</a></li>
						<li><a href="#">메뉴2</a></li>
						<li><a href="#">메뉴3</a></li>
						<li><a href="#">메뉴4</a></li>
						<li><a href="#">메뉴5</a></li>
					</ul>
				</nav>