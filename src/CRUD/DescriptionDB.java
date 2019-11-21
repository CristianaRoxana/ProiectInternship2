package CRUD;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DescriptionDB {
	
	String jdbc_driver="com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/internship";
    String user = "root";
    String pw = "root";

	public void connection() {
		try {
			Class.forName(jdbc_driver);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
