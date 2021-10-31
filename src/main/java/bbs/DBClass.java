package bbs;

import java.sql.*;

public class DBClass {
	// 필드 정적변수 선언
	private static String url;
	private static String id = "root", password = "sksdi1532", db = "mydata";

	// mysql 드라이버 로딩
	public static String loadMySQLDriver() {
		url = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch(Exception e) {
			e.printStackTrace();
		}
		return url;
	}
	
	// mysql DBMS 커넥션 url 생성
	public static Connection getConnection(String url, String id, String password) throws SQLException {
		return DriverManager.getConnection(url, id, password);
	}
	
	public static Connection getMYSQLConnection() throws SQLException {
		db = (db == null)? "": db;
		url = "jdbc:mysql://localhost:3306/"+db;
		String option = "?useUnicode=true&characterEncoding=UTF-8";
		url = url + option;
		return getConnection(url, id, password);
	}
	
	/** 오라클 **/
	public static Connection getOracleConnection(String sid) throws SQLException{
		String url = "jdbc:oracle:this@localhost:1521:" + sid;
		return getConnection(url, id, password);
	}
	
	// insert 실행
	public static void insert(Connection conn, String query) throws SQLException{
		PreparedStatement stmt = conn.prepareStatement(query);
		stmt.executeUpdate();
		stmt.close();
		conn.close();
	}
	
	public static void setInsert(String table, String[] column, String[] value, Connection conn) throws SQLException {
		String colKey = null;
		String colVal = null;
		
		colKey = String.join(", ", column);
		for(int i = 0; i < value.length; i++) { 
			value[i] = "'" + value[i] + "'";
		}
		colVal = String.join(", ", value);
		
		String query = "insert into " + table + "(" + colKey + ") value (" + colVal + ");";
		insert(conn, query);
	}
	
	public static void setUpdate(String table, String column, String value, String colOption, String option, Connection conn) throws SQLException {
		String query = "update " + table + " set " + column + "=" + value + " where " + colOption + "=" + option;
		insert(conn, query);
	}
}
