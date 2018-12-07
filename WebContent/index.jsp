<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="org.pack.Employee" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Kriger Campus</title>
<style>
hr { 
    display: block;
    margin-top: 0em;
    margin-bottom:0em;
    margin-left: auto;
    margin-right: auto;
    border-style: inset;
    border-width: 2.5px;
    border-color:#f78fb3;
    color:#f78fb3;
    background-color:#f78fb3;
}
#login h4{
padding-bottom:2em;
}
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
background:#63cdda;
padding-bottom:1em;
}
#login{
width:40%;
height:100vh;
background-color:rgba(52, 73, 94,1.0);
}
img{
width:10em;
border-radius:50%;
height:10em;
margin-left:5em;
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

}
input[type="submit"]{
width:25%;
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


#myCarousel{
    height:78vh;
    width:100%;
    background:#63cdda;
   color:#f7f1e3;
}
.slide{
width:100%;
padding:0;
}
h3{
color:#c44569;
}
.item h2,h3{
text-align:center;
}
ul li{
color:#e15f41;
}
h3 p,h3 label{
color:#574b90;
}
</style>
</head>
<body>
<%
String id=null,password=null,status=""; %>
<div id="container">
<div id="motto">
<div id="logo">
<div id="circle">
<img src="images/logo.png" src="logo"/>
</div>
<div id="content">
<h1>Kriger Campus</h1>
<h2>India's Education Network</h2>
</div>
</div>
<!--  
<p class="literate">Making INDIA 100% literate</p>
<p class="future">The future of our country rests on our ability to successfully educate
 the next generation.</p>
 -->
 <hr>
 <div class="slide"> 
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
      <li data-target="#myCarousel" data-slide-to="5"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <h2>CORE VALUES</h2>
<ol>
<li>Be effective (Pursuing right goals but the ROI is low) over efficient (Pursuing wrong goals but the ROI is High).</li>
<li>Focus on the USER and work backward.</li>
<li>Be a cognitive miser.</li>
<li>Frugality: Accomplish more with less input without compromising the output.</li>
<li>Automate/Crowdsource/Piggyback the solution and move on to the next problem.</li>
<li>Being a revolution we have no competitors.</li>
<li>Be a PLATFORM or AGGREGATOR but never a producer.</li>
<li>Question the status quo but don't reinvent the wheel.</li>
<li>Serious work can be done in a fun way.</li>
<li>Devote 20% of your time in skill development to maintain your relevance.</li>
<li>Take time to plan but execute fast.</li>
</ol>
</div>

<div class="item">
<h2>FUTURE ROADMAP</h2>
<h3><label>VISION:</label>Make India 100% literate<h3>
 <h2>2019</h2>
<ol>

<li>Connect Individuals i.e.
<ul>
<li>Students</li>
<li>Parents</li>
<li>Teachers</li>
<li>Influencers</li>
<li>Subject Experts</li>
<li>Tutors</li>
</ul>
</li>
<li>Connect Corporates i.e.
<ul>
<li>Schools</li>
<li>Colleges</li>
<li>College club/ committees</li>
<li>Play Schools</li>
<li>Coaching Institutes</li>
<li>Educational service providers</li>
<li>Non-Government Organizations</li>
</ul>
</li>
<li>A multilingual platform in English and Hindi</li>

<li>Annual education competition</li>

<li>Advertisements for corporates</li>

<li>Big Data implementation </li>

</ol>
      </div>
    
<div class="item">
<h2>FUTURE ROADMAP</h2>
<h3><label>VISION:</label> Make India 100% literate<h3>
       <h2>2020</h2>
<ol>
<li>A multilingual platform in Marathi, Gujarati</li>

<li>AI-based personalized timeline</li>

<li>Location-based search engine for education resources.</li>

<li>Marketplace for educational resources.</li>

<li>One-click Form Filling for Admission</li>

<li>Tie up with Gov. Organization for educational resource sharing & Skill Development</li>

<li>Connect
<ul>
<li>Career Counsellors</li>
<li>Book Publishers</li>
<li>Education service providers</li>
<li>Govt. Educational bodies</li>
</ul>
</li> 
</ol>
      </div>

 <div class="item">
<h2>FUTURE ROADMAP</h2>
<h3><label>VISION:</label> Make India 100% literate<h3>
<h2>2021</h2>
<ol>
<li>An authenticated rating system for institutes and service providers</li>

<li>Computer vision & Machine learning to enhance the user experience</li>

<li>Predict user career growth graph</li>

<li>One-click Form Filling for Jobs</li>
</ol>

</div>


 <div class="item">
<h2>FUTURE ROADMAP</h2>
<h3><label>VISION:</label>Make India 100% literate<h3>
<h2>2022</h2>
<ol>
<li>International expansion for Individual and corporate users
<ul>
<li>Australia</li>
<li>USA</li>
<li>Europe</li>
</ul>
</li>
<li>Alumni network to connect current students & institute.</li>

<li>Kriger Consultancy in India</li>

<li>R&D division for hardware and software research</li>
</ol>
</div>

<div class="item">
<h2>FUTURE ROADMAP</h2>
<h3><label>VISION:</label> Make India 100% literate</h3>
<h2>2023</h2>
<ol>
<li>Virtual education by the Top rated institutes.</li>

<li>Virtual education by Top rated Professional</li>

<li>Professional & corporate courses</li>

<li>open app for 3rd party developers</li>

<li>AR/VR Products</li>

<li>Student Financial/Banking/Loan</li>
</ol>
</div>

    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" id="right" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
 
</div>
<div id="login">
<div id="kc">
<img src="images/logo.png" src="logo"/>
<h1>Kriger Campus</h1>
<h2>India's Education Network</h2>
</div>
<h4>Login to your Account</h4>
<form action="index.jsp" method="post">
<input type="text" placeholder="Official Email ID" name="id" />
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
    id=request.getParameter("id");
if(request.getParameter("password")!="")
	password=request.getParameter("password");
if(id!=null && password!=""){
	Employee e=new Employee();
	status=e.checkLogin(id, password);
}	
}
%>
<p id="status"><%=status %></p>
</div>
</div>
</body>
</html>