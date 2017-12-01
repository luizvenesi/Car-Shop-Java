<%@ page import ="java.sql.*" %>
<%@page import="com.dbconnectionutil.org.DbConnection"%>
<%@page import="java.lang.Integer" %>

<%
	
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

    String user = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    
    try{
    int row = 0;
    String query = "INSERT INTO members(first_name, last_name, email, uname, pass, regdate) VALUES (?,?,?,?,?,?)";
    conn = DbConnection.getConnection();
	ps = conn.prepareStatement(query);
	ps.setString(1, fname);
	ps.setString(2, lname);
	ps.setString(3, email);
	ps.setString(4, user);
	ps.setString(5, pwd);
	ps.setDate(6, new java.sql.Date(System.currentTimeMillis()));
	
	row =  ps.executeUpdate();
	
    if (row > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("login.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("login.jsp");
    }
    
    }
    
    catch(Exception ex){
    	out.println("Error DB");
    }
%>