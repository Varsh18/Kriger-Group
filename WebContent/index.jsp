<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="org.pack.Employee" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
input[type="text"],input[type="password"]{
border:none;
outline:none;
border-bottom:1px solid #ddd;
}
</style>
</head>
<body>
<div id="container">
<div id="motto">
</div>
<div id="login">
<h4>Login to your Account</h4>
<form action="" method="post">
<input type="text" placeholder="User ID" name="id"/>
<input type="password" placeholder="Password" name="password"/>
<input type="submit" value="Login"/>
</form>
</div>
</div>
<%
int id=0;
String ids=null,password=null,status=null;
if(request.getParameter("id")!=null)
    ids=request.getParameter("id");
if(request.getParameter("password")!=null)
	password=request.getParameter("password");
if(ids!=null && password!=null){
	Employee e=new Employee();
	id=Integer.parseInt(ids);
	status=e.checkLogin(id, password);
	out.println(status);
}
%>
</body>
</html>