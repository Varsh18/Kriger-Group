<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="org.pack.Employee" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="Background-color:#CCC0FF">
<%
String e[]=new String[11];
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
 for(int i=0;i<e.length;i++)
	 out.println(e[i]+"\n");
Employee emp =new Employee();
emp.insertEmployee(e);
out.println("Employee id:"+emp.count());
out.println("Employee password:"+e[0].concat("@kriger123"));
%>
</body>
</html>