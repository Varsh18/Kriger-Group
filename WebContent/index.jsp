<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="org.pack.Employee" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<title>Kriger Campus</title>
<style>
body{
font-family:Raleway;
}
#container{
display:flex;
flex-wrap:wrap;}
#motto{
width:60%;
height:44em;
}
#logo{
display:flex;
flex-wrap:wrap;
}
#login{
width:40%;
background-color:rgba(52, 73, 94,1.0);
}
img{
width:10em;
height:10em;
margin-left:5em;
margin-top:5em;
padding-bottom:5em;
}
h2,h1{
margin-left:5em;
font-size:20px;
}
h1{
font-size:2em;}
h2{
font-size:1.5em;}
h4{
padding-top:6em;
font-size:2em;
color:#4b6584;
margin-left:2em;
}
input[type="text"],input[type="password"]{
border:none;
outline:none;
background-color:rgba(52, 73, 94,1.0);
border-bottom:1px solid #ddd;
width:80%;
margin-left:3em;
margin-right:2.5em;
margin-bottom:2em;
font-size:1.25em;
}
input[type="password"]{
letter-spacing:0.25em;
}
h1{
color:#8e44ad;
}
h2{
color:#27ae60;
}
#content{
margin-top:5em;
}
input[type="submit"]{
width:80%;
padding:0.5em;
margin-left:2.5em;
background-color:rgba(39, 174, 96,1.0);
color:#dcdde1;
font-size:1.5em;
}
.literate{
color:#0fb9b1;
font-size:3em;
padding-left:1em;
padding-right:1em;
}
.future{
color:#fed330;
font-size:2em;
}
#status{
color:#e84118;
font-size:1.5em;
text-align:center;
}
#kc{
display:none;}
</style>
</head>
<body>
<%int id=0;
String ids=null,password=null,status=""; %>
<div id="container">
<div id="motto">
<div id="logo">
<img src="images/logo.png" src="logo"/>
<div id="content">
<h1>Kriger Campus</h1>
<h2>India's Education Network</h2>
</div>
</div>
<p class="literate">Making INDIA 100% literate</p>
<p class="future">The future of our country rests on our ability to successfully educate
 the next generation.</p>
</div>
<div id="login">
<div id="kc">
<img src="images/logo.png" src="logo"/>
<h1>Kriger Campus</h1>
<h2>India's Education Network</h2>
</div>
<h4>Login to your Account</h4>
<form action="index.jsp" method="post">
<input type="text" placeholder="User ID" name="id" maxLength="8"/>
<input type="password" placeholder="Password" name="password" maxLength="35"/>
<input type="submit" value="Login" id="submit" name="submit"/>
</form>
<%
if(request.getParameter("id")=="" && request.getParameter("password")=="")
	status="Please Enter your User ID and password";
if(request.getParameter("id")=="")
	status="Please Enter your User ID";
else if(request.getParameter("password")=="")
	status="Please Enter your password";
else{
if(request.getParameter("id")!="")
    ids=request.getParameter("id");
if(request.getParameter("password")!="")
	password=request.getParameter("password");
if(ids!=null && password!=""){
	Employee e=new Employee();
	id=Integer.parseInt(ids);
	status=e.checkLogin(id, password);
}	
}
%>
<p id="status"><%=status %></p>
</div>
</div>
</body>
</html>