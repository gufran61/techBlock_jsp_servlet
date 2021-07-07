<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
<!-- css -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous" />
<link rel="stylesheet" href="css/Mystyle.css" type="text/css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<style>
	.banner-background{
	clip-path: polygon(50% 0%, 100% 1%, 100% 89%, 54% 99%, 22% 91%, 0 99%, 0 0);
	}
	</style>
</head>
<body>
<!-- navbar -->
	<%@include file="Normal_navbar.jsp"%>
<main class="primary-background p-5 banner-background">
<div class="container">
<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-header text-center primary-background text-white">
<span class="fa fa-3x fa-user-circle"></span>
<br>
Register here
</div>
<div class="card-body">
<form id="reg-form" action="registerServlet" method="post">

 <div class="form-group">
    <label for="exampleInputEmail1">User Name</label>
    <input name="username" type="text" class="form-control" id="user_name" aria-describedby="emailHelp" placeholder="Enter User Name">

  </div>

  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input  name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  
  
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input name="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  <div class="form-group">
    <label for="gender">Select Gender</label>
    <br>
    <input type="radio" id="gender" name="gender" value="male">Male
     <input type="radio" id="gender" name="gender" value="female">Female
  </div>
  
  <div class="form-group">
  <textarea name="about" class="form-control"  cols="10"  placeholder="Enter something about your self"></textarea>
  </div>
  <div class="form-check">
    <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Agree terms and condition</label>
  </div>
  <br>
  <div class="container text-center " id="loader" style="display: none;">
  <span class="fa fa-refresh fa-spin fa-2x"></span>
  <h4>Please Wait.....</h4>
  </div>
  <button id="sumbimt-btn" type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
<div class="card-footer">

</div>
</div>
</div>
</div>
</main>
<!-- javascript -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script type="text/javascript" src="js/myjs.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
<script>
$(document).ready(function(){
	console.log("loaded.........")
	$('#reg-form').on('submit', function(event){
event.preventDefault();
let form = new FormData(this);
$("#sumbimt-btn").hide();
$("#loader").show();
//send register servlet:
	$.ajax({
url: "registerServlet",
type: 'POST' ,
data: form,
success: function (data, textStatus, jqXHR){
	console.log(data)
	$("#sumbimt-btn").show();
	$("#loader").hide();
	if(data.trim()==='done')
		{
	swal("registered successfully.. we redirecting to login page")
	.then((value) => {
	  window.location="login.jsp"
	});
	}else
		{
		swal(data);
		}
},
error: function (jqXHR, textStatus, errorThrown){
	$("#sumbimt-btn").show();
	$("#loader").hide();
	swal("something went wrong..try again");
},
processData: false,
contentType: false
		});
		});
});
</script>
</body>
</html>