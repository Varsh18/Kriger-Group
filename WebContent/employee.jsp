<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="javax.servlet.annotation.MultipartConfig"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@page import="org.apache.commons.fileupload.*" %>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory" %>
<%@page import="java.io.*" %>
<%@page import="javax.servlet.http.*" %>
<%@page import="javax.servlet.*" %>
<%@ page import="org.pack.Employee" %>
<%@page import="java.util.*" %>
<%@page import="java.util.List" %>
<%@page import="java.io.File" %>
<%@page import="java.util.Iterator" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="Background-color:#CCC0FF">
<%
String e[]=new String[11];
String add[]=new String[6];
String padd[]=new String[5];
String femp[]=new String[4];
String vendor[]=new String[6];
String bank[]=new String[4];
 e[0]=request.getParameter("name");
 e[1]=request.getParameter("lname");
 e[2]=request.getParameter("gender");
 e[3]=request.getParameter("fname");
 e[4]=request.getParameter("mname");
 e[5]=request.getParameter("dob");
 e[6]=request.getParameter("jdate");
 e[7]=request.getParameter("role");
 e[8]=request.getParameter("rhead");
 e[9]=request.getParameter("bloodgroup");
 e[10]=request.getParameter("type");
 
 add[0]=request.getParameter("address");
 add[1]=request.getParameter("surban");
 add[2]=request.getParameter("state");
 add[3]=request.getParameter("pincode");
 add[4]=request.getParameter("email");
 add[5]=request.getParameter("pmobile");
 
 padd[0]=request.getParameter("paddress");
 padd[1]=request.getParameter("psurban");
 padd[2]=request.getParameter("pstate");
 padd[3]=request.getParameter("ppincode");
 padd[4]=request.getParameter("smobile");
 
 femp[0]=request.getParameter("uan");
 femp[1]=request.getParameter("pan");
 femp[2]=request.getParameter("pf");
 femp[3]=request.getParameter("aadhar");
 
 vendor[0]=request.getParameter("cname");
 vendor[1]=request.getParameter("caddress");
 vendor[2]=request.getParameter("psupplied");
 vendor[3]=request.getParameter("iso");
 vendor[4]=request.getParameter("enddate");
 vendor[5]=request.getParameter("duration");
 
 bank[0]=request.getParameter("bankac");
 bank[1]=request.getParameter("ifsc");
 bank[2]=request.getParameter("branch");
 bank[3]=request.getParameter("bank");
 
/* for(int i=0;i<e.length;i++)
	 out.println(e[i]+"\n");
*/

Employee emp =new Employee();
if(e[0] != null){
emp.insertEmployee(e);
emp.insertAddress(add);
emp.insertPermanentAddress(padd);
}
if(bank[0]!=null){
if(e[10].equals("Vendor Employee"))
	emp.insertVendor(vendor);
else
	emp.insertFullPart(femp);
emp.insertBank(bank);
}
/*
InputStream inputstream=null;
Part file=request.getPart("photo");
if(file!=null){
	inputstream=file.getInputStream();
	emp.insertPhoto(inputstream);
}
*/
String ImageFile="",itemName="";
boolean isMultipart=ServletFileUpload.isMultipartContent(request);
if(!isMultipart){
	
}
else{
FileItemFactory factory=new DiskFileItemFactory();
ServletFileUpload upload=new ServletFileUpload(factory);
List items=null;
try{
	items=upload.parseRequest(request);
}
catch(FileUploadException esp){
	esp.getMessage();
}
Iterator it=items.iterator();
while(it.hasNext()){
	FileItem item=(FileItem)it.next();
	if(item.isFormField())
	{
	String name=item.getFieldName();
	String value=item.getString();
	if(name.equals("ImageFile"))
		ImageFile=value;
	}
	else{
		try{
			itemName=item.getName();
			File savedFile=new File(config.getServletContext().getRealPath("/")+"Example\\image-folder\\"+itemName);
			item.write(savedFile);
		}
		catch(Exception es){
			out.println(es.getMessage());
		}
	}
}
}
emp.insertPhoto(itemName);
out.println("Employee id:"+emp.count()+"<br/>");
out.println("Employee password:"+e[0].concat("@kriger123")+"<br/>");
out.println("Employee Name:"+e[0]+"<br/>");
out.println("Employee Last Name:"+e[1]+"<br/>");
out.println("Type of Employee:"+e[10]+"<br/>");
%>
</body>
</html>