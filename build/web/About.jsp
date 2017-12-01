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
<title>About</title>
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

<div class="col-md-10 col-md-offset-1">
<h3>History</h3>
<p>Bacon ipsum dolor amet turducken swine sirloin ground round tri-tip jowl. Bresaola hamburger pork chop pork loin sausage capicola short loin brisket bacon alcatra. Brisket alcatra biltong bresaola turducken tenderloin landjaeger pig spare ribs. Pancetta shank ham hock, short loin venison ham salami sirloin drumstick doner capicola.</p>

<p>Cow kielbasa sirloin tenderloin. Tongue beef ribs pork belly, pork chop turducken corned beef sirloin biltong jerky jowl leberkas shankle kielbasa porchetta. Porchetta bresaola ham hock, prosciutto kevin doner corned beef flank cow. Pastrami boudin pork chop shankle landjaeger pork porchetta beef ribs capicola chuck. Rump frankfurter biltong sausage tenderloin kielbasa beef ribeye cupim.</p>

<p>Picanha turducken biltong, bresaola beef ribs pork belly beef cupim. Tri-tip turkey ground round t-bone, hamburger porchetta kevin cupim chicken salami doner. Pork loin jowl filet mignon capicola rump meatball ham hock turkey boudin chicken venison tenderloin drumstick shoulder landjaeger. Tail strip steak swine filet mignon.</p>

<br>

<h3>Values and Mission</h3>
<p>Bacon ipsum dolor amet turducken swine sirloin ground round tri-tip jowl. Bresaola hamburger pork chop pork loin sausage capicola short loin brisket bacon alcatra. Brisket alcatra biltong bresaola turducken tenderloin landjaeger pig spare ribs. Pancetta shank ham hock, short loin venison ham salami sirloin drumstick doner capicola.</p>

<p>Cow kielbasa sirloin tenderloin. Tongue beef ribs pork belly, pork chop turducken corned beef sirloin biltong jerky jowl leberkas shankle kielbasa porchetta. Porchetta bresaola ham hock, prosciutto kevin doner corned beef flank cow. Pastrami boudin pork chop shankle landjaeger pork porchetta beef ribs capicola chuck. Rump frankfurter biltong sausage tenderloin kielbasa beef ribeye cupim.</p>

<p>Picanha turducken biltong, bresaola beef ribs pork belly beef cupim. Tri-tip turkey ground round t-bone, hamburger porchetta kevin cupim chicken salami doner. Pork loin jowl filet mignon capicola rump meatball ham hock turkey boudin chicken venison tenderloin drumstick shoulder landjaeger. Tail strip steak swine filet mignon.</p>

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