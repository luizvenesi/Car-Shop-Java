<%@page import="com.dbconnectionutil.org.DbConnection"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat" %>
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
<title>Add Car</title>
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
 
<% } else {%>
 <a class="btn btn-primary btn" href="index.jsp" role="button">Home</a>
 <!-- <a class="btn btn-primary btn" href="find_id_member.jsp" role="button">Add Car</a> -->
 <a class="btn btn-primary btn" href="Contact.jsp" role="button">Contact</a>
 <a class="btn btn-primary btn" href="About.jsp" role="button">About</a>
<% } %>

 <h1>Car Shop</h1>
  <p>Welcome to Car Shop in Canada.</p>
</div>
</div>
 <!-- End Header -->
 
<!-- Form Add Car -->
<div class="container bg-info" style="padding-top:20px; padding-bottom:20px">
<div class="col-sm-4">
<h1>Add New Car</h1>
<form role="form" action="add.jsp" method="post">
<div class="form-group">
<label>Brand</label>
<input type="text" class="form-control" name="brand" placeholder="Brand" >
</div>
<div class="form-group">
<label>Model</label>
<input type="text" class="form-control" name="model" placeholder="Model">
</div>
<div class="form-group">
<label>Year</label>
<input type="text" class="form-control" name="year" placeholder="Year" >
</div>
<div class="form-group">
<label>Mileage</label>
<input type="text" class="form-control" name="mileage" placeholder="Mileage">
</div>
<div class="form-group">
<label>Price</label>
<input type="text" class="form-control" name="price" placeholder="Price" >
</div>
<div class="form-group">
<label>Transmission</label>
<select name="transmission" required="required">
<option value="Manual" >Manual</option>
<option value="Auto">Auto</option>
</select>


<label>   Type</label>
<select name="type" >
<option value="Used" >Used</option>
<option value="New">New</option>
</select>
</div>
<div class="form-group">
<label>Date</label>
<%java.text.DateFormat df = new java.text.SimpleDateFormat("dd/MM/yyyy"); %>
<label><%= df.format(new java.util.Date()) %> </label>
</div>
<br />
<button class="btn btn-info btn-block" type="submit">Add Car</button>

</form>
<!--END Form Add Car -->

<!-- List Car by User -->
<% 
String id = session.getAttribute("id").toString();
Connection conn = null;
PreparedStatement ps = null;
ResultSet rs = null;
String query = "SELECT * FROM cars WHERE id_members='"+id+"'";
try{
conn = DbConnection.getConnection(); 
ps = conn.prepareCall(query);
rs = ps.executeQuery();
%>
<br/>
<br/>

<div class="container">
<div class="col-sm-12">
<h1>List of Cars</h1>
<br/>
<table class="table">
<thead>
<tr>
<th>Date</th>
<th>Brand</th>
<th>Model</th>
<th>Year</th>
<th>Mile</th>
<th>Price</th>
<th>Transmission</th>
<th>Type</th>
<th></th>
</tr>
</thead>
<tbody>
<%
while(rs.next()){

%>

<tr>
<td><%= rs.getString("date") %></td>
<td><%= rs.getString("brand") %></td>
<td><%= rs.getString("model") %></td>
<td><%= rs.getString("year") %></td>
<td><%= rs.getString("mileage") %> km </td>
<td>$ <%= rs.getString("price") %></td>
<td><%= rs.getString("transmission") %></td>
<td><%= rs.getString("type") %></td>
<td>
<a href="update_car.jsp?id_car=<%=rs.getInt("id_car") %>" class="btn btn-success" role="button"> Update</a>
<a href="delete.jsp?id_car=<%=rs.getInt("id_car") %>" class="btn btn-danger" role="button"> Delete</a>
</td>
</tr>

<%
}
}

catch(Exception ex){
	
	ex.printStackTrace();
}
%>
</tbody>
</table>

</div>
</div>
</div>
<!-- END List Car by User -->
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