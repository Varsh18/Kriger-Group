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
    public int insertEmployee(String fname, String lname) throws Exception{
    	int c;
    	try{
        sql="INSERT INTO employee_personel VALUES(?,?,?)";
        ps=con.prepareStatement(sql);
        c=count()+1;
        ps.setInt(1, c);
        ps.setString(2,fname);
        ps.setString(3,lname);
    	ps.executeQuery();
    	}catch(SQLException se){
    		System.out.println("Error in Insertion");
    	}
    	return 1;
    	 }
     public int count() throws Exception {
     try {

    	 sql="select count(*) from employee_personel";
    	 ps=con.prepareStatement(sql);
     	ps.executeQuery();
    	     while (rs.next()) {
    	     return rs.getInt(1);
    	     }
    	} catch (Exception e) {
    	System.out.println("Row count error");	
    	}
        return 0;
    	}

}