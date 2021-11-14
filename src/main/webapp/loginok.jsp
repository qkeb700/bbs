<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, bbsSelf.DBClass" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
	String userid = request.getParameter("userid");
	String userpass = request.getParameter("userpass");
	String dbUserpass = null;
	
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String query = "select userpass from member where userid = ?";
	int ok = 0;
	
	try{
		Connection conn = DBClass.getMySQLConnection();
		pstmt = conn.prepareStatement(query);
		pstmt.setString(1, userid);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			ok = 1;
			dbUserpass = rs.getString("userpass");
		}
	}catch(Exception e){
		e.printStackTrace();
	}
%>
<%
	if(ok == 1){
		if(userpass.equals(dbUserpass)){
			session.setAttribute("userid", userid);
%>
		<script>alert("<%=userid%> 님 환영합니다."); location.href="index.jsp";</script>			
<%
		} else{
%>
		<script>alert("비밀번호가 틀립니다. 다시 확인 해 주세요."); history.back();</script>
<%			
		}
	} else{
%>
		<script>alert("<%=userid%> 라는 아이디는 존재하지 않습니다."); history.back();</script>
<%		
	}

%>