package org.pack;
import java.sql.*;
public class Employee {
	private  Connection con;
    private PreparedStatement ps;
    private ResultSet rs;
    String sql;
    public Employee(){
    	try{
        Class.forName("com.mysql.jdbc.Driver"); 
        con=DriverManager.getConnection("jdbc:mysql://localhost/kriger","root","");
    	}catch(ClassNotFoundException e) {
    	System.out.println(e);
    	}catch(Exception se){
    		System.out.println(se);}
    	   }
    //Insert data into the  table
    public int insertEmployee(String name, String email){
    	try{
        sql="INSERT INTO employee_personel VALUES(?,?,?)";
        ps=con.prepareStatement(sql);
    	ps.executeQuery();
    	}catch(SQLException se){
    		System.out.println("Error in Insertion");
    	}
    	return 1;
    	 }

}