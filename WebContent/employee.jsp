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
<style>
table {
    border-collapse: collapse;
     width: 100%;
}

th, td {
    border-bottom: 1px solid #ddd;
}
tr:nth-child(even) {background-color: #f2f2f2;}
th {
    height: 50px;
}
th, td {
    padding: 15px;
    text-align: left;
}
</style>
</head>
<body>
<%
String e[]=new String[11];
String add[]=new String[6];
String padd[]=new String[5];
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
 String s=null;
Employee emp =new Employee();
if(e[0]!=null){
s=emp.insertEmployee(e);

emp.insertAddress(add);
emp.insertPermanentAddress(padd);
}
%>
<table>
 <tr>
 <td>Employee id</td>
 <td><%out.println(s); %></td>
 </tr>
  <tr>
 <td>Employee Password</td>
 <td><% out.println(e[0].concat("@kriger123"));%></td>
 </tr>
   <tr>
 <td>First Name</td>
 <td><% out.println(e[0]);%></td>
 </tr>
   <tr>
 <td>Last Name</td>
 <td><% out.println(e[1]);%></td>
 </tr>
    <tr>
 <td>Type of employee</td>
 <td><% out.println(e[10]);%></td>
 </tr>
  </table>
</body>
</html>