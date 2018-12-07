package org.o7planning.tutorial.jdbc;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class MySQLConnUtils {
 
 
   // Connect to MySQL
   public Connection getMySQLConnection() throws SQLException,
       ClassNotFoundException {
       
       return MySQLConnUtils.MySQLConnection();
   }
 
   public static Connection MySQLConnection() throws SQLException,
           ClassNotFoundException {
       Class.forName("com.mysql.jdbc.Driver");
       Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kriger","root","");
       return conn;
   }
}