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
<title>Cars</title>
</head>
<body>
<div>
<p></p>

</div>
<!-- DB Connection -->
<% 
Connection conn = null;
PreparedStatement ps = null;
ResultSet rs = null;

String query = "SELECT * FROM cars INNER JOIN members ON cars.id_members=members.id";

try{
conn = DbConnection.getConnection(); 
ps = conn.prepareCall(query);
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
 <a class="btn btn-primary btn" href="find_id_member.jsp" role="button">Add Car</a>

<% } %>
   <a class="btn btn-primary btn" href="Contact.jsp" role="button">Contact</a>
    <a class="btn btn-primary btn" href="About.jsp" role="button">About</a>
 
 <h1>Car Shop</h1>
  <p>Welcome to Car Shop Canada.</p>
</div>
 <!-- End Header -->

<br/>


<div class="col-sm-12">
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
<th>Member</th>
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
<td><%= rs.getString("mileage") %></td>
<td><%= rs.getString("price") %></td>
<td><%= rs.getString("transmission") %></td>
<td><%= rs.getString("type") %></td>
<td><%= rs.getString("uname") %>


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