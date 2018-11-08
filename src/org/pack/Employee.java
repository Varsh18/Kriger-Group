package org.pack;
import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
    public int insertEmployee(String[] emp){
    	int c=0;
    	java.sql.Date dob=null,jdate=null;
         java.util.Date		dateStr=null;
    	SimpleDateFormat format = new SimpleDateFormat("dd-MM-yyyy");
    	try {		
    		dateStr= format.parse(emp[5]);
	    	dob = new java.sql.Date(dateStr.getTime());
	    	 dateStr = format.parse(emp[6]);
	    	jdate = new java.sql.Date(dateStr.getTime());
		} catch (ParseException e1) {
			e1.printStackTrace();
		} 
    	try {
			c=count()+1;
		} catch (Exception e) {
			e.printStackTrace();
		}
    	try {
			s.executeUpdate("INSERT INTO kriger.employee_personel(id,password,name,lname,gender,fname,mname,dob,jdate,role,rhead,bloodgroup,type) Values('"+c+"','"+emp[0].concat("@kriger123")+"','"+emp[0]+"','"+emp[1]+"','"+emp[2]+"','"+emp[3]+"','"+emp[4]+"','"+dob+"','"+jdate+"','"+emp[7]+"','"+emp[8]+"','"+emp[9]+"','"+emp[10]+"')");
		} catch (SQLException e) {
			e.printStackTrace();
		}
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
  /*   public static void main(String[] args) {
    	 Employee e=new Employee();
    	 String[] emp=new String[11];
    	 emp[0]="name";
    	 emp[1]="lname";
    	 emp[2]="gender";
    	 emp[3]="fname";
    	 emp[4]="mname";
    	 emp[5]="24-07-2016";
    	 emp[6]="12-09-1999";
    	 emp[7]=("role");
    	 emp[8]=("rhead");
    	 emp[9]=("bloodgroup");
    	 emp[10]=("type");
    	 e.insertEmployee(emp);
     }*/
}