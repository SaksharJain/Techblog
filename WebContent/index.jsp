<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
     <%@page import="techblog.servlet.Connectionprovider" %>
  <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Page</title>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
 <link rel="stylesheet" href="css/mystyle.css" type="text/css"/>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.banner_background{
clip-path: polygon(0 0, 100% 0, 100% 30%, 100% 87%, 67% 78%, 24% 88%, 0 76%, 0% 30%);



}
</style>
	
</head>
<body>
<!-- navbar-->
<%@include file="normal_navbar.jsp"%>

<!-- banner -->
<div class="container-fluid p-0 m-0 banner_background" >
<div class="jumbotron bg-dark text-white">
<div class="container">
<h3 class="display-3"> Welcome  to TechBlog</h3>
<p> A programming language is a formal language comprising a set of instructions that produce various kinds of output. Programming languages are used in computer programming to implement algorithms.</p>


<button class="btn btn-outline-light btn-lg"><span class="	fa fa-external-link"></span>Start! Its Free</button>

<a href="login.jsp" class="btn btn-outline-light btn-lg "><span class="	fa fa-user-circle-o fa-spin"></span>Login</a>


</div>


</div>


</div>
<br>

<!-- cards -->
<div class="container">

<div class="row mb-2">

<div class="col-md-4">
<div class="card">
   <div class="card-body">
    <h5 class="card-title">Java Programing </h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background">Read More</a>
  </div>
</div>

</div>
<div class="col-md-4">
<div class="card">
   <div class="card-body">
    <h5 class="card-title">Java Programing </h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background">Read More</a>
  </div>
</div>

</div>
<div class="col-md-4">
<div class="card">
   <div class="card-body">
    <h5 class="card-title">Java Programing </h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background">Read More</a>
  </div>
</div>

</div>


</div>
<div class="row">

<div class="col-md-4">
<div class="card">
   <div class="card-body">
    <h5 class="card-title">Java Programing </h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background">Read More</a>
  </div>
</div>

</div>
<div class="col-md-4">
<div class="card">
   <div class="card-body">
    <h5 class="card-title">Java Programing </h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background">Read More</a>
  </div>
</div>

</div>
<div class="col-md-4">
<div class="card">
   <div class="card-body">
    <h5 class="card-title">Java Programing </h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background">Read More</a>
  </div>
</div>

</div>


</div>
</div>
<script
  src="https://code.jquery.com/jquery-3.5.1.min.js"
  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="js/myjs.js" type="text/javascript"></script>

</body>
</html>