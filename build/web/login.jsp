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
<title>Cars</title>
</head>
<body>
<div>
<p></p>
</div>

<!-- Header -->
<div class="container">
<div class="jumbotron">
<a class="btn btn-primary btn" href="index.jsp" role="button">Home</a>
   <a class="btn btn-primary btn" href="Contact.jsp" role="button">Contact</a>
    <a class="btn btn-primary btn" href="About.jsp" role="button">About</a>
  <h1>Car Shop</h1>
  <p>Welcome to Car Shop Canada.</p>
  
</div>
</div>
<!-- END Header -->

<!-- Form Log In -->
<div class="container bg-info" style="padding-top:20px; padding-bottom:20px">
<div class="col col-sm-4">
<h1>Sign In</h1>
<form role="form" action="check_login.jsp" method="post">
<div class="form-group">
<label>User Name</label>
<input type="text" class="form-control" name="uname" placeholder="User Name" required="required">
</div>
<div class="form-group">
<label>Password</label>
<input type="password" class="form-control" name="pass" placeholder="Password" required="required">
</div>
<button class="btn btn-info btn-block" type="submit">Sign In</button>
</form>
</div>
<!-- END Form Log In -->

<!-- Form Create Log In -->
<div class="col-sm-4 col-sm-offset-2">
<h1>Create Log In</h1>
<form role="form" action="registration.jsp" method="post">
<div class="form-group">
<label>First Name</label>
<input type="text" class="form-control" name="fname" placeholder="First Name" required="required">
</div>
<div class="form-group">
<label>Last Name</label>
<input type="text" class="form-control" name="lname" placeholder="Last Name" required="required">
</div>
<div class="form-group">
<label>User Name</label>
<input type="text" class="form-control" name="uname" placeholder="User Name" required="required">
</div>
<div class="form-group">
<label>Password</label>
<input type="text" class="form-control" name="pass" placeholder="Password" required="required">
</div>
<div class="form-group">
<label> Confirm Password</label>
<input type="text" class="form-control" name="password" placeholder="Confirm Password" required="required">
</div>
<div class="form-group">
<label>Email</label>
<input type="email" class="form-control" name="email" placeholder="Email Address" required="required">
</div>
<button class="btn btn-info btn-block" type="submit">Add User</button>

</form>
</div>
</div>
<!-- END Form Create Log In -->

<!-- Footer -->
<br>
<div class="container">
<footer class="text-center">	
    <p>&copy; Copyright Car Shop 2017</p>
  </footer>
<br>
</div>
<!-- END Footer -->
</body>
</html>