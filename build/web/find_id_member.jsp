<%@page import="com.dbconnectionutil.org.DbConnection"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- Session - Name for the user display on the screen -->
<% if (session.getAttribute("userid") == null) { %>
   <p>Welcome</p>
<% } else {%>
   <p> Welcome <%=session.getAttribute("userid")%>
      <a href='logout.jsp'>Log out</a>
    </p>
<% } %>
 

 <!-- Header -->
<div class="container">
<div class="jumbotron">
  <h1>Car Shop</h1>
  <p>Welcome to a larger Car shop in Canada.</p>
 
  <!-- Session - Name for the user display on the screen -->
<% if (session.getAttribute("userid") == null) { %>
  <a class="btn btn-primary btn-lg" href="login.jsp" role="button">Log In</a>
<% } else {%>
 <a class="btn btn-primary btn-lg" href="add_car.jsp" role="button">Add Car</a>
 
<% } %>
  

</div>
</div>

<!-- DB Connection -->
<% 
Connection conn = null;
PreparedStatement ps = null;
ResultSet rs = null;
String query = "SELECT * FROM members";
try{
conn = DbConnection.getConnection(); 
ps = conn.prepareCall(query);
rs = ps.executeQuery();
%>

<div class="container">
<div class="col-sm-12">
<table class="table">
<thead>
<tr>
<th>ID</th>
<th>User Name</th>
<th>First Name</th>
<th>Last Name</th>
<th>Email</th>
<th>Date</th>
<th></th>
</tr>
</thead>
<tbody>
<%
while(rs.next()){

%>

<tr>
<td><%= rs.getString("id") %></td>
<td><%= rs.getString("uname") %></td>
<td><%= rs.getString("first_name") %></td>
<td><%= rs.getString("last_name") %></td>
<td><%= rs.getString("email") %></td>
<td><%= rs.getString("regdate") %></td>
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

<% 
String id_members = session.getAttribute("userid").toString();
String id=null;


try{
conn = DbConnection.getConnection(); 
rs = ps.executeQuery("select * from members where uname='" + id_members + "'");

%>
<%
while(rs.next()){
	id = rs.getString("id");
	session.setAttribute("id",id);
	
%>


<td><%= rs.getString("id") %></td><br/>
<% out.print(id); %>

<%
}
}
catch(Exception ex){
	
	ex.printStackTrace();
}


String site = "add_car.jsp" ;
response.setStatus(response.SC_MOVED_TEMPORARILY);
response.setHeader("Location", site); 
%>
</body>
</html>