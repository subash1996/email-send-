package Dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;

public class Dbconn {
    static Connection con; 
    public static Connection create(){
        try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/publiccloud","root","root");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return con;
    }
	
	
}
