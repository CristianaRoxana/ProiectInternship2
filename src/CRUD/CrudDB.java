package CRUD;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class CrudDB {
	public static void main(String[] args) {
		
		CrudDB con=new CrudDB();
	    con.createConnection();	
	}
	void createConnection() {
		
		String jdbc_driver="com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/internship";
        String user = "root";
	    String pw = "root";
	    try{ 
	    	Class.forName(jdbc_driver);
	    	try {
	    		Connection con = (Connection) DriverManager.getConnection(url, user, pw); 
	    		System.out.println("Database connection success");
//DB creation
			//	CreateDB createDB = new CreateDB();
			//	createDB.createDB(con);
//Tables creation
	    	//CreateTables table= new CreateTables();
	    	//table.admin(con);
	    	//table.bookingAgents(con);
	    	//table.transport(con);
	    	//table.rezervation(con);
	    	//table.customer(con);
	    	//table.payment(con);
//Add Foreign Key
	    	//AddForeignKey foreignKeys= new AddForeignKey();
	    	//foreignKeys.update(con);
	    	} catch (SQLException e) {
				e.printStackTrace();
			}
	    } catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
}
