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
String name=request.getParameter("name");
String lname=request.getParameter("lname");

Employee emp =new Employee();
emp.insertEmployee(name,lname);
%>
</body>
</html>