 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
 <link rel="stylesheet" href="css/mystyle.css" type="text/css"/>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
<%@include file="normal_navbar.jsp" %>
<main>
<div class="container">
<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-header">
<span class="fa fa-3x fa-user-circle"><br>
</span>
Register Here
</div>
<div class="card-body">
<form action ="RegisterServlet" method="POST">
  
  <div class="form-group">
    <label for="user_name">User Name</label>
    <input name=user_name type="text" class="form-control" id="user_name" aria-describedby="emailHelp" placeholder="Enter name">
   </div>
  
  
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="user_email" name="user_email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input name="user_password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  <div class="form-group">
  <label for="gender">Select Gender</label><br>
  <input type="radio" id="gender" name="gender" value="Male">Male</input>
  <input type="radio" id="gender" name="gender" value="Female"	>Female</input>
  </div>
  <div class="form-group">
    <textarea name="about" class="form-control" id="about" row="5"></textarea>
   
  </div>
  <div class="form-check">
    <input name="user_check" type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">agree terms and conditions</label><br>
  </div>

  <button type="submit" class="btn btn-primary">Submit</button>
  
</form>
</div>

</div>
</div>
</div>

</main>





<script
  src="https://code.jquery.com/jquery-3.5.1.min.js"
  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="js/myjs.js" type="text/javascript"></script>

</body>
</html>