package dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {

	private DbConnection() {
    }
    
    private static Connection connection = null;
    
	public static Connection getConnection() throws SQLException {
		
		
		try {
			if(connection == null) {
			Class.forName("com.mysql.jdbc.Driver");
			
			connection =  DriverManager.getConnection(
					"jdbc:mysql://localhost/student_db", "root", "root");
			System.out.println("Connection Created Successfully...");
			
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return connection;
	
	}
	
	
}
