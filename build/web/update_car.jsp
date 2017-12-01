<%@page import="com.dbconnectionutil.org.DbConnection"%>
<%@page import="java.sql.*" %>
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
<title>Edit Form</title>
</head>
<body>
<div>
<p></p>
</div>
<%
String id_car = request.getParameter("id_car");
int id = Integer.parseInt(id_car);
Connection conn = null;
PreparedStatement ps = null;
ResultSet rs = null;
try{
	conn = DbConnection.getConnection();
	String query = "SELECT * FROM cars WHERE id_car='"+id+"'";
	ps = conn.prepareStatement(query);
	rs = ps.executeQuery();	
%> 

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
 
 <!-- Form Update -->
<div class="container bg-info" style="padding-top:20px; padding-bottom:20px">
<div class="row">
<div class="col-sm-4">
<h1>Edit Form</h1>
<form action="update.jsp" role="form"  method="post" >
<% 
while(rs.next()){
%>
<input type="hidden" name="id" value="<%=rs.getString("id_car")%>">

<div class="form-group">
<label>Brand</label>
<input type="text" class="form-control" value= "<%= rs.getString("brand") %>" name="brand" required="required">
</div>

<div class="form-group">
<label>Model</label>
<input type="text" class="form-control" value= "<%= rs.getString("model") %>" name="model" required="required">
</div>

<div class="form-group">
<label>Year</label>
<input type="text" class="form-control" value= "<%= rs.getString("year") %>" name="year" required="required">
</div>

<div class="form-group">
<label>Mileage</label>
<input type="text" class="form-control" value= "<%= rs.getString("mileage") %>" name="mileage" required="required">
</div>

<div class="form-group">
<label>Price</label>
<input type="text" class="form-control" value= "<%= rs.getString("price") %>" name="price" required="required">
</div>
<%
}
}
catch(Exception ex){	
	ex.printStackTrace();
}

%>
<button class="btn btn-info btn-block" type="submit">Update Record</button>
<br/>
</form>
</div>
</div>
 <!-- END Form Update -->

</div>

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