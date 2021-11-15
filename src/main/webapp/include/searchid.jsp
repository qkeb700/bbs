<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="java.sql.*, bbsSelf.DBClass" %>

<%
	String userid = request.getParameter("userid");
	PreparedStatement pstmt = null;
	
	ResultSet rs = null;
	int ok = 0;
	String query = "select userid from member where userid = ?";
	
	try{
		Connection conn = DBClass.getMySQLConnection();
		pstmt = conn.prepareStatement(query);
		pstmt.setString(1, userid);
		rs = pstmt.executeQuery();
		if(!rs.next()){
			ok = 1;
		}
		rs.close();
		pstmt.close();
		conn.close();
	} catch(Exception e){
		e.printStackTrace();
	}
%>
<%=ok%>