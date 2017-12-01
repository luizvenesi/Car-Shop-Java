<%@ page import ="java.sql.*" %>
<%@page import="com.dbconnectionutil.org.DbConnection"%>
<%

String userid = request.getParameter("uname");    
String pwd = request.getParameter("pass");
Connection conn = null;
PreparedStatement ps = null;
ResultSet rs = null;

String query = "select * from members where uname='" + userid + "' and pass='" + pwd + "'";

try{
conn = DbConnection.getConnection(); 
ps = conn.prepareCall(query);
rs = ps.executeQuery();
  
    if (rs.next()) {
        session.setAttribute("userid", userid);
        
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("index.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
}
catch(Exception ex){
	out.println("Error DB");
}
%>