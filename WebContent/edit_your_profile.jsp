<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<style>
table{
 margin: auto;
border-spacing: 15px;
border-collapse: separate;
}
img{
border-radius:50%;
}
#submit{
 margin: auto;
 text-align:center;
}
h1{
color:#40739e;
}
button{
}
.head{
color:#0097e6;
font-size:2em;
}
#header{
width:20%;
padding-top: 3%;
text-align:center;
align-content: center;
}
#leave{
width:80%;
}
#box{
  display:flex;
  flex-wrap:wrap;
}
</style>
<body>

<h1>Edit Your Profile</h1>
<form>
<div id="box">
<div id="header">
<img src="https://kiittnp.in/8134d463acc8c7b66744a481847ab4b/assets/img/user.png" width=150 height=150 alt="pro-pic"/>
<br/><br/>
<input type="button"  value="Upload Image"/><br/><br/>
<input type="button"  value="Remove Image"/><br/><br/>
<p>Employee name</p>
<p>Designation</p>
</div>
<div id="leave">
<table>
 <colgroup>
        <col class="col-md-4">
        <col class="col-md-10">
 </colgroup>
<tbody class="head">
<tr>
<td>Personal</td>
</tr>
</tbody>
       <tbody class="field">
       <tr>
          <td><span> First Name:</span></td>
          <td><input type='text' class="form-control" /></td>
       </tr>
       </tbody>

       <tbody class="field">
        <tr>
            <td><span>Last Name:</span></td>
            <td><input type='text' class="form-control" /></td>
        </tr>
       </tbody>

       <tbody class="field">
        <tr>
        <td><span>Nick Name:</span></td>
        <td><input type='text' class="form-control" /></td>
        </tr>
       </tbody>
     <tbody class="head">
      <tr>
      <td>Contact Info</td>
      </tr>
      </tbody>
       <tbody class="field">
       <tr>
       <td><span>Email:</span></td>
       <td><input type='text' class="form-control" /></span></td>
       </tr>
       </tbody>
       <tbody class="field">
       <tr>
       <td><span>Phone:</span></td>
       <td><input type='text' class="form-control" /></span></td>
       </tr>
       </tbody>
       <tbody class="field">
       <tr>
       <td>Website:</td>
       <td><input type='text' class="form-control" /></td>
       </tr>
       </tbody>
<tbody class="head">
<tr>
<td>About Yourself</td>
</tr>
</tbody>
<tbody class="field">
<tr>
<td><span>Biographical Info:</span></td>
<td><textarea class="form-control" rows="5" id="comment"></textarea>
<span>Share a little biographical information to fill out your profile. This may be shown publicly.</span></td>
</tr>
</tbody>

<tbody class="head">
<tr>
<td>Account Management</td>
</tr>
</tbody>
<tbody class="field">
<tr>
<td><span>New Password:</span></td>
<td><div id="pwd-container">
	<div class="form-group">
   <input type="password" class="form-control" id="password" placeholder="Password">
     </div>
<div class="col-sm-6 pt-3">
<!-- <div class="pwstrength_viewport_progress"></div>
     </div>-->
  </div>
</td>
</tr>
</tbody>
<tbody class="field form-group">
<tr>
<td>Re-enter Password</td>
    <td>
               <div class="form-group">

                   <input type="password" class="form-control"  placeholder="Password">

               </div>
    </td>
</tr>
</tbody>
</table>
<div id="submit">
<button type="submit" class="btn btn-primary">Update Profile</button>
</div>
</div>
</div>
</form>
</body>
</html>
