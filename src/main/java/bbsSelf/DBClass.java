package bbsSelf;
import java.sql.*;

public class DBClass {
	private static String url;
	private static String id = "root", password = "sksdi1532", db = "mydata";
	
	public static String loadMySQLDriver() {
		url = null;
		try {
			Class.forName("com.sql.cj.jdbc.Driver");
		} catch(Exception e) {
			e.printStackTrace();
		}
		return url;
	}
}
