  <%@page import="techblog.entites.Messages"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
 <link rel="stylesheet" href="css/mystyle.css" type="text/css"/>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
.banner_background{clip-path: polygon(50% 0%, 100% 0, 100% 43%, 100% 91%, 68% 86%, 33% 95%, 0 85%, 0% 43%, 0 0);}</style>
	
</head>

</head>
<body>
<%@include file="normal_navbar.jsp"%>
<main class="d-flex align-items-center" style="height:100vh;background:White;">
<div class="container">
<div class="row">
<div class="col-md-4 offset-md-4">
<div class="card">
<div class="card-header" style="background:#0099ff;color:white;text-align:center;"><span class="	fa fa-user-plus fa-3x"></span>
<p> Login here</p>
</div>
   <%
     Messages m =(Messages)session.getAttribute("msg");
    if (m != null) {
   %>
  <div class="alert <%= m.getCssClass() %>" role="alert">
 <%= m.getContent() %>
         </div> 

 <%        
    session.removeAttribute("msg");
    }
     %>

<div class="card-body">
<form action="LoginServlet" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input  name="password" required type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>

  <div class="container text-center">
  <button type="submit" class="btn btn-primary">Submit</button>          
         </div>
</form>
</div>
</div>
</div>
</div>
<hr style="background:Black;clip-path: polygon(50% 0%, 100% 0, 100% 43%, 100% 91%, 68% 86%, 33% 95%, 0 85%, 0% 43%, 0 0);">
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