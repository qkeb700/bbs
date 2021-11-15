package bbsSelf;
import java.sql.*;

public class DBClass {
	private static String url;
	private static String id = "root", password = "sksdi1532", db = "mydata";
	
	public static String loadMySQLDriver() {
		url = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch(Exception e) {
			e.printStackTrace();
		}
		return url;
	}
	
	public static Connection getConnection(String url, String id, String password) throws SQLException {
		return DriverManager.getConnection(url, id, password);
	}
	
	public static Connection getMySQLConnection() throws SQLException {
		db = (db == null)? "":db;
		url = "jdbc:mysql://localhost:3306/" + db;
		String option = "?useUnicode=true&characterEncoding=UTF-8";
		url = url + option;
		return getConnection(url, id, password);
	}
	
	public static void insert(Connection conn, String query) throws SQLException {
		PreparedStatement pstmt = conn.prepareStatement(query);
		pstmt.executeUpdate();
		pstmt.close();
		conn.close();
	}
	
	public static void setInsert(String table, String[] column, String[] value, Connection conn) throws SQLException{
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
		String query = "update " + table + " set " + column + " = " + value + " where" + colOption + "=" + option;
		insert(conn, query);
	}
}
