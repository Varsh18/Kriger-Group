package org.o7planning.tutorial.jdbc;
import java.sql.Connection;
import java.sql.SQLException;

public class ConnectionUtils {
	 static Connection c=null;
    public static Connection getMyConnection() throws SQLException,
            ClassNotFoundException {
    	MySQLConnUtils m=new MySQLConnUtils();
       c= m.getMySQLConnection();
       System.out.println(c);
       return c;
    }
 
    //
    // Test Connection ...
    //
    public static void main(String[] args) throws SQLException,
            ClassNotFoundException {
 
        System.out.println("Get connection ... ");
 
        // Get a Connection object
        Connection conn = ConnectionUtils.getMyConnection();
 
        System.out.println("Get connection " + conn);
 
        System.out.println("Done!");
    }
 
}