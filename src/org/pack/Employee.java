package org.pack;
import java.io.InputStream;
import java.sql.*;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import com.mysql.jdbc.StringUtils;
public class Employee {
	private  Connection con;
    private PreparedStatement ps;
    private Statement s;
    private ResultSet rs;
    String sql;
    int c=0;
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
    public int insertPhoto(String is) {
    	String sql="INSERT INTO kriger.ephoto(id,photo) VALUES(?,?)";
    	PreparedStatement s;
    	System.out.println("Insert photo function");
		try {
			s = con.prepareStatement(sql);
			s.setInt(1, c);
			s.setString(2, is);
	        if(s.executeUpdate()>0)	
	        System.out.println("Employee Photo Inserted");
	        else
	        System.out.println("Not Inserted");	
		} catch (SQLException e) {
			e.printStackTrace();
		}
    	return 1;
    }
    
  public String generate(int c) {
	  String eid="KC";
	  DateFormat f=new SimpleDateFormat("YYYY");
	  String year=f.format(Calendar.getInstance().getTime());
	  String l=String.format("%03d", c);
	  eid=eid+year+l;
	  return eid;
  }
    //Insert data into the  table
    public String insertEmployee(String[] emp){
    	String eid;
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
    	eid=generate(c);
    	
    	try {
			s.executeUpdate("INSERT INTO kriger.employee_personel(id,eid,email,password,name,middlename,lname,gender,fname,mname,dob,jdate,role,rhead,bloodgroup,type,status) Values('"+c+"','"+eid+"','"+emp[4]+"','"+emp[0].concat("@kriger123")+"','"+emp[0]+"','"+emp[11]+"','"+emp[1]+"','"+emp[2]+"','"+emp[3]+"','"+emp[4]+"','"+dob+"','"+jdate+"','"+emp[7]+"','"+emp[8]+"','"+emp[9]+"','"+emp[10]+"','"+emp[12]+"')");
		System.out.println("Personal details added");
    	} catch (SQLException e) {
			e.printStackTrace();
		}
    	return eid;
    	 }
    
    public int insertAddress(String[] emp){
    	int pincode=Integer.parseInt(emp[3]);
    	Long mobile=Long.valueOf(emp[5]);
    	try {
			s.executeUpdate("INSERT INTO kriger.current_address(id,address,suburban,state,pincode,mobile) Values('"+c+"','"+emp[0]+"','"+emp[1]+"','"+emp[2]+"','"+pincode+"','"+mobile+"')");
		System.out.println("Current Address added");
    	} catch (SQLException e) {
			e.printStackTrace();
		}
    	return 1;
    	 }
    
    public int insertPermanentAddress(String[] emp){
    	int pincode=Integer.parseInt(emp[3]);
    	Long mobile=Long.valueOf(emp[4]);
    	try {
			s.executeUpdate("INSERT INTO kriger.permanent_address(id,address,suburban,state,pincode,mobile) Values('"+c+"','"+emp[0]+"','"+emp[1]+"','"+emp[2]+"','"+pincode+"','"+mobile+"')");
			System.out.println("Permanent Address added");
    	} catch (SQLException e) {
			e.printStackTrace();
		}
    	return 1;
    	 }
    
    public int insertFullPart(String[] emp){
    	Long uan=Long.valueOf(emp[0]);
    	Long pan=Long.valueOf(emp[1]);
    	Long pc=Long.valueOf(emp[2]);
    	Long aadhar=Long.valueOf(emp[3]);
    	try {
			s.executeUpdate("INSERT INTO kriger.full_part_employee(id,uan,pan,pc_ac,aadhar) Values('"+c+"','"+uan+"','"+pan+"','"+pc+"','"+aadhar+"')");
			System.out.println("Full/Part Time details added");
    	} catch (SQLException e) {
			e.printStackTrace();
		}
    	return 1;
    	 }
    public int insertVendor(String[] emp){
    	java.sql.Date edate=null;
        java.util.Date dateStr=null;
   	SimpleDateFormat format = new SimpleDateFormat("dd-MM-yyyy");
   	try {		
   		dateStr= format.parse(emp[4]);
	    edate = new java.sql.Date(dateStr.getTime());
		} catch (ParseException e1) {
			e1.printStackTrace();
		} 
    	try {
			s.executeUpdate("INSERT INTO kriger.vendor_employee(id,cname,address,product,iso,end_date,duration) Values('"+c+"','"+emp[0]+"','"+emp[1]+"','"+emp[2]+"','"+emp[3]+"','"+edate+"','"+emp[5]+"')");
		System.out.println("Vendor employee added");
    	} catch (SQLException e) {
			e.printStackTrace();
		}
    	return 1;
    	 }
    
    public int insertBank(String[] emp){
    	try {
			s.executeUpdate("INSERT INTO kriger.bank(id,ac,ifsc,branch,name) Values('"+c+"','"+emp[0]+"','"+emp[1]+"','"+emp[2]+"','"+emp[3]+"')");
			System.out.println("Bank details added");
    	} catch (SQLException e) {
			e.printStackTrace();
		}
    	return 1;
    	 }
     public int count() throws Exception {
     try {

    	 sql="select MAX(id) from kriger.employee_personel";
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
     public String checkLogin(String id,String password) {
    	 int row=0,r=0;
    	 String Val="";
         try {
	     	rs=s.executeQuery("SELECT * FROM kriger.employee_personel WHERE email='"+id+"' AND password='"+password+"'");
	    	     while (rs.next()) {
	    	     row= rs.getRow();
	    	     }
         if(row==0) {
        	 rs=s.executeQuery("SELECT * FROM kriger.employee_personel WHERE email='"+id+"'");
    	    	     while (rs.next()) {
    	    	     r= rs.getRow();
    	    	     }
    	    	     if(r==0)
    	    	    	 return "Invalid User ID";
    	    	     else
    	    	    	 return "Invalid Password";
         }
         }
         catch(Exception e) {
	        System.out.println(e);
         }
         try {
			rs=s.executeQuery("SELECT type FROM kriger.employee_personel WHERE email='"+id+"'");
	         while (rs.next()) {
	        	 Val = rs.getString ("type");  
	    	 }
		} catch (SQLException e) {
			e.printStackTrace();
		}
    	 return "Login Success"+Val;
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