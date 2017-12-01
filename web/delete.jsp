<%@page import="com.dbconnectionutil.org.DbConnection"%>
<%@page import="java.sql.*" %>

<%
String id = request.getParameter("id_car");
int id_car = Integer.parseInt(id);

Connection conn = null;
PreparedStatement ps = null;

try{
	int row = 0;
	conn = DbConnection.getConnection();
	String query = "DELETE FROM cars WHERE id_car=?";
	ps = conn.prepareStatement(query);
	ps.setInt(1, id_car);
	
	row = ps.executeUpdate();
	if(row>0){
		response.sendRedirect("add_car.jsp");
	}else{
		out.println("Error");
	}
}
catch(Exception ex){
	ex.printStackTrace();
}
finally{
	
	ps.close();
	conn.close();
}
%>
