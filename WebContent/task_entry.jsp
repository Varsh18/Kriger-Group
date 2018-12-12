<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!DOCTYPE>
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<style>
.header{
display:flex;
flex-wrap:wrap;
padding-left:12%;
}
#calender{
display:flex;
flex-wrap:wrap;
}
.dept h4{
padding-left:20%;
padding-top:10%;
font-size:4em;
}
select{
width:80%;
height:6%;
font-size:1.5em;
}
.month,.year{
width:50%;
}
</style>
</head>
<body>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<div class="header">
<img width="200" height="200" src="http://kriger.in/wp-content/uploads/2018/05/Screen-Shot-2018-05-24-at-12.59.30-AM.png" alt="logo"/>
<div style="width:50%;"; class="middle">
<div class="dept">
<h4>Department</h4>
</div>
<div id="calender">
<div class="month">
<select id="month">
<option value="Jan" selected="selected">January</option>
<option value="Feb" >February</option>
<option value="Mar" >March</option>
<option value="Apr" >April</option>
<option value="May" >May</option>
<option value="Jun" >June</option>
<option value="Jul" >July</option>
<option value="Aug" >August</option>
<option value="Sep" >September</option>
<option value="Oct" >October</option>
<option value="Nov" >November</option>
<option value="Dec" >December</option>
</select>
</div>
<div class="year">
<select id="year"></select>
</div>
</div>
</div>
<div class="emp">
  <p>Employee id</p>
   <img width="180" height="180" alt="pro-pic"/>
</div>
</div>
<hr/>
<div id="task"></div>
<script>
$(document).ready(function () {
setTimeout(function() {
        $("select").trigger('click');
    },5);
$("select").click(function (evt) {
        evt.preventDefault();
        $( "table" ).remove();
        $( "p" ).remove();
        var mon = $('#month').val();
        var leap=0;
        var year = $('#year').val();
        if(mon=='Jan' || mon=='Mar'||mon=='May'||mon=='Jul'||mon=='Aug'||mon=='Oct'||mon=='Dec')
           j=31;
        else if(mon == 'Feb' && leap==1)
            j=29;
        else if(mon == 'Feb' && leap==0)
            j=28;
        else
            j=30;
for(i=1;i<=j;i++){
var date=mon+' '+i+' '+year;
addDay(date);
}
});

$(document).on("click", ".ibtnDel", function (event) {

       $(this).css('background-color','red');
        $(this).prop('value', 'Closed');   
        $(this).prop('disabled', true);
});

$(document).on("click",".glyphicon-plus-sign", function(){
var classes = "#"+$(this).parent().closest('table').attr('id').split(' ');
        var id=classes+" tr";
        var counter = $(id).length-1;
        var newRow = $("<tr>");
        var cols = "";
        cols += '<td>Task '+ counter + '</td>';
        cols += '<td><input type="text" class="form-control" name="name' + counter + '"/></td>';
        cols += '<td><input type="text" class="form-control" name="hours' + counter + '"/></td>';
        cols += '<td><input type="text" class="form-control" name="dependancy' + counter + '"/></td>';
      //  cols += '<td><input type="button" class="ibtnDel btn btn-md btn-success " class="delete" value="Open"></td>';
       cols += '<td><select><option value="open">Open</option><option value="started">Started</option><option value="completed">Completed</option></select></td>';
        newRow.append(cols);
        console.log('added');
        $(newRow).appendTo(classes);
    console.log("Clicked."+$(this).parent().closest('table').attr('id').split(' '));
  });
});
function addDay(date){
var counter = $("table").length+1;
var day="",dday="";
var cdate=new Date(date);
var d=cdate.getDay();
switch(d){
case 0:{dday="Sunday";break;}
case 1:{dday="Monday";break;}
case 2:{dday="Tuesday";break;}
case 3:{dday="Wednesday";break;}
case 4:{dday="Thursday";break;}
case 5:{dday="Friday";break;}
case 6:{dday="Saturday";break;}
}
day='<div class="container"><p>'+date+'</p>';
day+='<table id="Table' + counter;
day+='" class=" table order-list">';
day+='<thead>';
day+='<tr>';
day+='<td class="col-sm-1">'+dday+'</td>';
day+='<td class="col-sm-2">Task Name</td><td class="col-sm-1">Hours Required</td><td class="col-sm-1" >Dependancy</td><td class="col-sm-1" >Status</td></tr>';
day+='</thead><tbody><tr><td colspan="5" style="text-align: left;cursor:pointer;">';
day+='<span class="glyphicon glyphicon-plus-sign addrow" value="Add Row" ></span>';
day+='</td></tr></tbody></table></div>';
 $(day).appendTo('body');
}
var year = 2019;
var till = 2099;
var options = "";
for(var y=year; y<=till; y++){
  options += "<option>"+ y +"</option>";
}
document.getElementById("year").innerHTML = options;


</script>
</body>
</html>
