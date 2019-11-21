package CRUD;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class AddForeignKey {
	DescriptionDB description = new DescriptionDB();
	Statement stmt = null;
	public void update(Connection con) {
		description.connection();

		try {
			stmt=con.createStatement();
			//String sql="ALTER TABLE Reservation ADD CONSTRAINT Transport_Type FOREIGN KEY (Transport_Type) REFERENCES Transport(Transport_Type);";
			//String sql="ALTER TABLE Reservation ADD CONSTRAINT Agent_Id FOREIGN KEY (Agent_Id) REFERENCES Booking_Agents(Agent_Id);";
			//String sql="ALTER TABLE Reservation ADD CONSTRAINT Customer_Id FOREIGN KEY (Customer_Id) REFERENCES Customer(Customer_Id);";
			String sql="ALTER TABLE Payment ADD CONSTRAINT Reservation_Id FOREIGN KEY (Reservation_Id ) REFERENCES Reservation(Reservation_Id );";
			stmt.executeUpdate(sql);
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
}
	

