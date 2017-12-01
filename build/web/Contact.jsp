<%@page import="com.dbconnectionutil.org.DbConnection"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html> 
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device=width, inicial-scale=1">
<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
<script src="js/jquery.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>
<title>Contact</title>
</head>
<body>
<div>
<p></p>
</div>
<!-- Header -->
<div class="container">
<div class="col col-lg-offset-10 col-lg-3">
<!-- Session - Name for the user display on the screen -->
<% if (session.getAttribute("userid") == null) { %>
 
<% } else {%>
<div class="text-left">
   <h4 class="glyphicon glyphicon-user"><%=session.getAttribute("userid")%></h4><br/>
    <a class="btn btn-primary btn-sm" href="logout.jsp" role="button">Log Out</a>
     </div>
<% } %>
</div>
<div class="jumbotron">
  <!-- Session - Name for the user display on the screen -->
<% if (session.getAttribute("userid") == null) { %>
  <a class="btn btn-primary btn" href="login.jsp" role="button"> Log In</a>
   <a class="btn btn-primary btn" href="index.jsp" role="button">Home</a>
 <a class="btn btn-primary btn" href="Contact.jsp" role="button">Contact</a>
 <a class="btn btn-primary btn" href="About.jsp" role="button">About</a>
   
<% } else {%>
 <a class="btn btn-primary btn" href="index.jsp" role="button">Home</a>
 <a class="btn btn-primary btn" href="find_id_member.jsp" role="button">Add Car</a>
 <a class="btn btn-primary btn" href="Contact.jsp" role="button">Contact</a>
 <a class="btn btn-primary btn" href="About.jsp" role="button">About</a>
<% } %>

 <h1>Car Shop</h1>
  <p>Welcome to Car Shop Canada.</p>
</div>
</div>
 <!-- End Header -->

<br/>

<div class="container">

<div class="col-md-6">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5771.692427674486!2d-79.37651759999999!3d43.6721681!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89d4cb34d27310bd%3A0xba15d20622070393!2sCentro%2C+Toronto%2C+ON%2C+Canad%C3%A1!5e0!3m2!1spt-BR!2sus!4v1480341922486" width="500" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
</div>

<div class="col-md-6">

       <div class="form-group">
   <br /> 
    <div class="col-md-10 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
  <input name="email" placeholder="contact@carshop.ca" class="form-control"  type="text">
      </div>
  </div>
  <br />
</div>
    
<div class="form-group">
   <br />  
    <div class="col-md-10 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
  <input name="phone" placeholder="(416)555-1212" class="form-control" type="text">
    </div>
  </div>
    <br/>
</div>
      
<div class="form-group">
  <br /> 
    <div class="col-md-10 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
  <input name="address" placeholder="555 Bloor Street " class="form-control" type="text">
    </div>
  </div>
  <br/>
</div>

<div class="form-group">

   <br />  
    <div class="col-md-10 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
  <input name="city" placeholder="Toronto M1M 1L1" class="form-control"  type="text">
    </div>
  </div>
  <br/>
</div>

</div>
</div>

	
<!-- Footer -->
<br>
<div class="container">
<footer class="text-center">	
    <p>&copy; Copyright Car Shop 2016</p>
  </footer>
<br>
</div>
<!-- END Footer -->

</body>
</html>