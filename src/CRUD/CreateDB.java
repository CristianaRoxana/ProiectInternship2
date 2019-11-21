package CRUD;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class CreateDB {
	Statement stmt=null;
	DescriptionDB description= new DescriptionDB();
	
	public void createDB(Connection con) {
		try {
			stmt=con.createStatement();
			String sql="CREATE DATABASE if not exists internship";
			stmt.executeUpdate(sql);
		}catch(SQLException se) {
			se.printStackTrace();
		}catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (stmt != null)
					stmt.close();
			} catch (SQLException se) {
			}
		}
	}
	
	

}
