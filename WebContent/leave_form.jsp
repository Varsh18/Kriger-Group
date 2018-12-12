<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>
</head>
<style>
table{
 margin: auto;
border-spacing: 15px;
border-collapse: separate;
}
#submit,body{
 margin: auto;
 text-align:center;
}
h1{
color:#40739e;
}
button{
}
</style>
<body>

<h1>Leave Application Form</h1>
<form>
<div id="leave">

   <table>
       <tbody class="field">
       <tr>
          <td><span>Name:</span></td>
          <td>From database</td>
       </tr>
       </tbody>

       <tbody class="field">
        <tr>
            <td><span>Units:</span></td>
            <td><label><input type="radio" name="units" checked>Days</label>
            <label><input type="radio" name="units">Hours</label></td>
        </tr>
       </tbody>

       <tbody class="field">
        <tr>
        <td><span>Leave Type:</span></td>
        <td><select class="form-control" id="type">
            <option>Certified Sick Leave </option>
            <option>Uncertified Sick Leave</option>
            <option>Vacation</option>
            <option>Annual Leave</option>
            <option>Emergency Leave</option>
            <option>Personal Leave</option>
            <option>Other</option>
            </select></td>
        </tr>
       </tbody>

       <tbody class="field">
       <tr>
       <td><span>Available/Taken:</span></td>
       <td><span>From database</span></td>
       </tr>
       </tbody>
<tbody class="field">
<tr>
<td>Date Range:</td>
<td>
      <div class="form-group">
From:
        <div class='input-group date' id='datetimepicker6'>
          <input type='text' class="form-control   form-control"/>
          <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
          </span>
      </div>
      </div>
</td>
<td>
To:
      <div class="form-group">
        <div class='input-group date' id='datetimepicker7'>
          <input type='text' class="form-control" />
          <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
          </span>
      </div>
      </div>
</td>
</tr>
</tbody>

<tbody class="field">
<tr>
<td><span>Leave Requested:</span></td>
<td>Automatically update number of days</td>
</tr>
</tbody>

<tbody class="field">
<tr>
<td><span>Notes:</span></td>
<td><textarea class="form-control" rows="5" id="comment"></textarea></td>
</tr>
</tbody>


<tbody class="field form-group">
<tr>
    <td><span>Supporting Documents:</span></td>
    <td><input type="file" class="form-control-file" id="exampleFormControlFile1"></td>
</tr>
</tbody>
</table>
<div id="submit">
<button type="submit" class="btn btn-primary">Apply for leave</button>
</div>
</div>

</form>
<script>
$(document).ready(function() {
  $(function() {
    $('#datetimepicker6').datetimepicker();
    $('#datetimepicker7').datetimepicker({
      useCurrent: false //Important! See issue #1075
    });
    $("#datetimepicker6").on("dp.change", function(e) {
      $('#datetimepicker7').data("DateTimePicker").minDate(e.date);
    });
    $("#datetimepicker7").on("dp.change", function(e) {
      $('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
    });
  });
});
</script>
</body>
</html>