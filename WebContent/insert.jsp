<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Kriger Campus</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
    <link rel="stylesheet" media="screen" href="css/styles.css" type="text/css">
  </head>
  <body>
  <form id="regForm" method="post" action="${pageContext.request.contextPath}/insert"
        enctype="multipart/form-data">
  <div id="header">
  <div class="head logo">
  <img src="images/logo.png"  alt="Kriger campus" width=150px height=150px/>
  </div>
  <div class="title head">
  <h1>Kriger Campus</h1>
  <h2>India's Education Network</h2>
  <h2 style="color:#576574;">Employee Registration Form</h2>
  </div>
 <div id="pass" class="head">
<img id="photo"width=145px height=195px/><br/>
<input type="file"  name="photo" accept="image/*"  onchange="loadFile(event)">
</div>
  </div> 
  <br/>
  <hr/>
  <div class="tab">
     <div id="radio">
      <span>Gender:</span>
     <input type="radio" name="gender" value="male" checked> Male
     <input type="radio" name="gender" value="female"> Female
     <input type="radio" name="gender" value="other"> Other
     </div>
    <div id="select">
    <select name="status" id="status">
    <option value="active">Active</option>
    <option value="inactive">In Active</option>
    </select>
     </div>
     <div class="field">
    <span>First Name:</span>
      <input placeholder="First name" oninput="this.className = ''" id="fname" name="name" type="text">
     </div>
     <div class="field">
    <span>Middle Name:</span>
      <input placeholder="Middle name" oninput="this.className = ''" id="middlename" name="middlename" type="text">
      </div>
      <div class="field">
    <span>Last Name:</span>
      <input placeholder="Last name" oninput="this.className = ''" id="lname" name="lname" type="text">
      </div>
      <div class="field">
    <span>Mother's Name:</span>
      <input placeholder="Mother's name" oninput="this.className = ''" id="mname" name="mname" type="text">
      </div>
      <div class="field">
    <span>Father's Name:</span>
      <input placeholder="Father's name" oninput="this.className = ''" id="fname" name="fname" type="text">
      </div>
     <div class="field">
     <span>Date of Birth:</span>
       <input  onkeypress="date(this.name,this.value)" oninput="this.className = ''" id="dob" name="dob" type="date">
    </div>
    <div class="field">
    <span>Joining Date:</span>
           <input onkeypress="date(this.name,this.value)" oninput="this.className = ''" id="jdate" name="jdate" type="date">
    </div>
    <div class="field">
     <span>Role:</span>
      <input placeholder="Role" oninput="this.className = ''" id="role" name="role" type="text">
     </div>
     <div class="field"> 
     <span>Reporting Head:</span>
      <input placeholder="Reporting Head" oninput="this.className = ''" id="rhead" name="rhead" type="text">
      </div>
      <div class="field">
       Blood Group:
      <input placeholder="Blood Group" id="bgroup"oninput="this.className = ''" name="bloodgroup" type="text">
      </div>
      <div class="field">
   <span>Type of Employee:</span>
   <select name="type" id="employee">
        <option value="Full Time Employee">Full Time Employee</option>
        <option value="Allahabad Bank">Admin</option>
        <option value="Part Time Employee">Part Time Employee</option>
        <option value="Vendor Employee">Vendor Employee</option>
   </select>
   </div>
   <div class="field">
   <span>Email Address:</span>
           <input placeholder="Email Address" id="email"  oninput="this.className = ''" name="email" type="text">
   </div>
  </div>
<hr/>
   <div class="address">
   <div class="box current">
   <div class="field">
    <span>Current Address:<br/></span> 
     <textarea id="address" name="address" oninput="this.className = ''" ></textarea><br/>
   </div>
  </div>
<div class="box place">
    <div class="field">
   <span>Sub Urban:</span> 
       <input placeholder="Sub urban" oninput="this.className = ''" id="surban" name="surban" type="text"><br/>
</div>
   <div class="field">
   <span>State:</span> 
       <input placeholder="State" oninput="this.className = ''" id="state"name="state" type="text">
  </div>
</div>
<div class="box pincode">
   <div class="field">
   <span>Pincode:</span>
       <input placeholder="Pincode" maxlength="6" oninput="this.className = ''"  id="pincode"name="pincode" type="text">
    </div>
</div>
<div class="box mobile">
   <div class="field">
   <span>Mobile number:</span> 
           <input placeholder="Mobile Number"  id="pmobile" oninput="this.className = ''" name="pmobile" type="text">
</div>
</div>
   <div class="field">
   <span>Email Address:</span> 
           <input placeholder="personal email id"  id="pmobile" oninput="this.className = ''" name="pmobile" type="text">
</div>

</div>
<br/>
<hr/>
<div class="address">
   <div class="box current">
   <input type="checkbox" onclick="copyAddress()"  id="copy"  />Same as Current address<br/>
   <div class="field">
<span> Permanent Address:</span>
     <textarea id="paddress" name="paddress"oninput="this.className = ''" ></textarea><br/>
   </div>
</div>
<div class="box place">
    <div class="field">
     <span>Sub Urban:</span>
       <input placeholder="Sub urban" oninput="this.className = ''" id="psurban" name="psurban" type="text"><br/>
    </div>
    <div class="field">
   <span> State:</span>
       <input placeholder="State" oninput="this.className = ''" id="pstate"name="pstate" type="text">
    </div>
</div>
<div class="box pincode">
<div class="field">
  <span> Pincode:</span>
       <input placeholder="Pincode" maxlength="6" oninput="this.className = ''"  id="ppincode"name="ppincode" type="text">
 </div>
</div>
<div class="box mobile">
  <div class="field">
  <span>Mobile number:</span> 
    <input placeholder="Mobile Number"  id="smobile" oninput="this.className = ''" name="smobile" type="text">
  </div>

</div>
</div>


<div style="overflow:auto;">
<div>
      <button  style="float:right;" type="button" id="nextBtn" onclick="nextPrev()">Submit</button>
    </div>
  </div>
  <div style="text-align:center;margin-top:40px;">
</div>
  </form>
  <script>
  function nextPrev() {
       if (!validateForm()) return false;
  
       document.getElementById("regForm").submit();
      
  }
  function validateForm() {
      var x, y,z, i=0, j,valid = true;
      x = document.getElementsByClassName("tab");
      y = x[0].getElementsByTagName("input");
      z = x[0].getElementsByTagName("textarea");
      j=y.length;
      k=z.length;
      for (; i < j; i++) {
        if (y[i].value == "") {
          y[i].className += " invalid";
          valid = false;
    }
      }
        for (i=0; i < k; i++) {
            if (z[i].value == "") {
              z[i].className += " invalid";
              valid = false;
        }
  }
   return valid;
  }
  var loadFile = function(event) {
	    var photo = document.getElementById('photo');
	    photo.src = URL.createObjectURL(event.target.files[0]);
	  };
	  function copyAddress(){
		  document.getElementById('paddress').value= document.getElementById('address').value;
		  document.getElementById('psurban').value= document.getElementById('surban').value;
		  document.getElementById('pstate').value= document.getElementById('state').value;
		  document.getElementById('ppincode').value= document.getElementById('pincode').value;
		  document.getElementById('smobile').value= document.getElementById('pmobile').value;
	  }
  </script>
  </body>
</html>
    