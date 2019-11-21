package CRUD;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;


public class CreateTables {
	
	DescriptionDB description = new DescriptionDB();
	Statement stmt = null;
	
	public void admin(Connection con) {
		description.connection();

		try {
			stmt=con.createStatement();
			
			String sql="CREATE TABLE if not exists Admin"+
					"(Admin_Id INTEGER not NULL, "
					+"Email VARCHAR(100)  not NULL , "
					+"Password VARCHAR(100) not NULL , primary key(email))";
			
			stmt.executeUpdate(sql);
		}catch(SQLException e) {
			e.printStackTrace();}
		}
	public void bookingAgents(Connection con) {
		description.connection();

		try {
			stmt=con.createStatement();
			String sql="CREATE TABLE if not exists Booking_Agents"+
					"(Agent_Id INTEGER not NULL AUTO_INCREMENT, "
					+"Agent_Name VARCHAR(100), "
					+"Agent_Details VARCHAR(100), primary key(Agent_Id))";	
			stmt.executeUpdate(sql);
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	public void transport(Connection con) {
		description.connection();

		try {
			stmt=con.createStatement();
			String sql="CREATE TABLE if not exists Transport"+
					"(Transport_Id INTEGER not NULL, "
					+"Transport_Type VARCHAR(100), primary key(Transport_Type))";
			//String sql=	"DROP TABLE Transport";
			stmt.executeUpdate(sql);
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	public void rezervation(Connection con) {
		description.connection();
		try {
			stmt=con.createStatement();
			String sql="CREATE TABLE if not exists Reservation"+
			"(Reservation_Id INTEGER not NULL AUTO_INCREMENT, "
			+"Customer_Id INTEGER not NULL, "
			+"Transport_Type VARCHAR(300) not NULL, primary key(Reservation_Id)) ";
			//String sql= "ALTER TABLE Reservation ADD COLUMN Agent_Id INTEGER ";
			stmt.executeUpdate(sql);
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	public void customer(Connection con) {
		description.connection();
		try {
			stmt=con.createStatement();
			String sql="CREATE TABLE if not exists Customer"+
			"(Customer_Id INTEGER not NULL AUTO_INCREMENT, "
			+"First_Name VARCHAR(300) not NULL, "
			+"Last_Name VARCHAR(300) not NULL,"
			+"Phone_Number VARCHAR(300), "
			+"Email VARCHAR(300), "
			+"City VARCHAR(300), "
			+"Country VARCHAR(300), primary key(Customer_Id)) ";
			
			stmt.executeUpdate(sql);
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	public void payment(Connection con) {
		description.connection();
		try {
			stmt=con.createStatement();
			String sql="CREATE TABLE if not exists Payment"
			+"(Payment_Id INTEGER not NULL AUTO_INCREMENT, "
			+"Payment_Date Date not NULL, "
			+"Payment_amount VARCHAR(300) not NULL, "
			+"Reservation_Id INTEGER not NULL, primary key(Payment_Id))";
			stmt.executeUpdate(sql);
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
}
