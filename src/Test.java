

import java.sql.Connection;
import java.sql.DriverManager;

import java.sql.SQLException;
import java.sql.Statement;




public class Test {
	public static void main(String[] args) {

	    
	        String url = "jdbc:mysql://localhost:3306/internship";
	        String user = "root";
	        String pw = "root";
	    try{  
	    	Connection con = (Connection) DriverManager.getConnection(url, user, pw); 
	        //if(con!=null) {
	    	String sql="INSERT INTO user(username,email,fullname,password)"+" VALUES('namhm','nam@yahoo.com','nume','mysecret')";
	        	//System.out.println("Connected to the database");
	    	Statement statement=(Statement) con.createStatement();
	    	int raws= ((java.sql.Statement) statement).executeUpdate(sql);
	    	if(raws>0) {
	    	System.out.println("A new user has been inserted succesfully");
	    	}
	    	con.close();
	        //}
	    }
	    catch(SQLException e){
	        e.printStackTrace();
	    }
	    
	  }
}
