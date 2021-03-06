
<%@page import="techblog.entites.user" %>

<%
user u=(user)session.getAttribute("currentUser");
if(u==null){
	response.sendRedirect("login.jsp"); 
}
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <script
  src="https://code.jquery.com/jquery-3.5.1.min.js"
  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="js/myjs.js" type="text/javascript"></script>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
 <link rel="stylesheet" href="css/mystyle.css" type="text/css"/>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
.banner_background{clip-path: polygon(50% 0%, 100% 0, 100% 43%, 100% 91%, 68% 86%, 33% 95%, 0 85%, 0% 43%, 0 0);}</style>
	
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="index.jsp"><span class="fa fa-cogs">  </span>  Techblog</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Disabled</a>
      </li>
    </ul>
  <ul class="navbar-nav mr-right">
  <li class="nav-item">
        <a class="nav-link " href="#!" data-toggle="modal" data-target="#exampleModal"><span class="fa fa-user-circle ">	</span> <%=u.getName() %></a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="logout"><span class="fa fa-user-plus ">	</span> Logout</a>
      </li>
    </ul>
  
  </div>
</nav>

<!-- data modal -->
<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
   <div class="modal-header ">
        <h6 class="modal-title " id="exampleModalLabel"> Techblog</h6>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <div class="container text-center">
      <img src="img/<%=u.getProfile() %>" class="img-fluid" style="border-radius:50%;max-width:100px;">
      <br>
       <h6 class="modal-title " id="exampleModalLabel"><%= u.getName() %></h6>
       
       </div>
       <div id="profile-details">
        <table class="table">
 
  </thead>
  <tbody>
    <tr>
      <th scope="row">Id</th>
       <td><%= u.getId() %></td>  
    </tr>
   <tr>
      <th scope="row">Email</th>
       <td><%= u.getEmail() %></td>  
    </tr>
     <tr>
      <th scope="row">Gender</th>
       <td><%= u.getGender() %></td>  
    </tr>
     <tr>
      <th scope="row">Status</th>
       <td><%= u.getAbout() %></td>  
    </tr>
  </tbody>
</table>
</div>
<!-- profile Edit -->
<div id="profile-edit" style="display: none;">
                          <h3 class="mt-2">Please Edit Carefully</h3>
                   <form action="EditServlet" method="post" >
              <table class="table">
                <tr>
                   <td>ID :</td>
                   <td><%= u.getId()%></td>
                     </tr>
                <tr>
                  <td>Email :</td>
                      <td> <input type="email" class="form-control" name="user_email" value="<%= u.getEmail()%>" > </td>
                     </tr>
                 <tr>
                   <td>Name :</td>
                 <td> <input type="text" class="form-control" name="user_name" value="<%= u.getName()%>" > </td>
                 </tr>
                  <tr>
                   <td>Password :</td>
                  <td> <input type="password" class="form-control" name="user_password" value="<%= u.getPassword()%>" > </td>
                   </tr>
                  <tr>
                 <td>Gender :</td>
                  <td> <%= u.getGender().toUpperCase()%> </td>
                  </tr>
                  <tr>
                        <td>About  :</td>
                       <td>
                       <textarea rows="3" class="form-control" name="user_about" ><%= u.getAbout()%>
                     </textarea>

                   </td>
                  </tr>
                                        

                </table>

                <div class="container">
                   <button type="submit" class="btn btn-outline-primary">Save</button>
                </div>

            </form>    

      </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">Ok</button>
         <button type="button" id="edit-profile-button" class="btn btn-primary" >Edit</button>
      </div>
    </div>
  </div>
</div>
   <script>
      $(document).ready(function () {
        let editStatus = false;
      $('#edit-profile-button').click(function ()
                                    {
                if (editStatus == false)
                {
                  $("#profile-details").hide()
                 $("#profile-edit").show();
                editStatus = true;
                $(this).text("Back")
               } else
                {
                $("#profile-details").show()
                $("#profile-edit").hide();
                 editStatus = false;
              $(this).text("Edit")
           }
            })
        });
        </script>
</body>
</html>