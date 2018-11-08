package org.pack;
import java.sql.*;
public class Employee {
	private  Connection con;
    private PreparedStatement ps;
    private Statement s;
    private ResultSet rs;
    String sql;
    public Employee(){
    	try{
        Class.forName("com.mysql.jdbc.Driver"); 
        con=DriverManager.getConnection("jdbc:mysql://localhost/kriger","root","");
        System.out.println("SQL Connected successfully");
        s=con.createStatement();
    	}catch(ClassNotFoundException e) {
    	System.out.println(e);
    	}catch(Exception se){
    		System.out.println(se);}
    	   }
    //Insert data into the  table
    public int insertEmployee(String fname, String lname){
    	int c=0;
    	try {
			c=count()+1;
		} catch (Exception e) {
			e.printStackTrace();
		}
    	//sql="INSERT INTO kriger.employee_personel VALUES(?,?,?);";
    	try {
			s.executeUpdate("INSERT INTO kriger.employee_personel(id,fname,lname) Values('"+c+"','"+fname+"','"+lname+"')");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	/*
    	try{
        ps=con.prepareStatement(sql);
        
        ps.setInt(1, c);
        ps.setString(2, fname);
        ps.setString(3, lname);
    	ps.executeUpdate();
    	}catch(SQLException se){
    		System.out.println(se);
    	}*/
    	return c;
    	 }
     public int count() throws Exception {
     try {

    	 sql="select count(*) from kriger.employee_personel";
    	 ps=con.prepareStatement(sql);
     	rs=ps.executeQuery();
    	     while (rs.next()) {
    	     return rs.getInt(1);
    	     }
    	} catch (Exception e) {
    	System.out.println(e);	
    	}
        return 0;
    	}
     /*public static void main(String[] args) {
    	 Employee e=new Employee();
    	 e.insertEmployee("h","y");
     }*/
}