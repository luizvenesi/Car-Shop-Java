<%@page import="com.dbconnectionutil.org.DbConnection"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.lang.Integer" %>
<%
String id = request.getParameter("id");
int id_car = Integer.parseInt(id);

String brand = request.getParameter("brand");
String model = request.getParameter("model");
String year = request.getParameter("year");
String mileage = request.getParameter("mileage");
String price = request.getParameter("price");


Connection conn = null;
PreparedStatement ps = null;

try{
	int row = 0;
	conn = DbConnection.getConnection();
	String query = "Update cars SET brand=?, model=?, year=?, mileage=?, price=? WHERE id_car=?";
	ps = conn.prepareStatement(query);
	ps.setString(1, brand);
	ps.setString(2, model);
	ps.setString(3, year);
	ps.setString(4, mileage);
	ps.setString(5, price);
	ps.setInt(6, id_car);
	
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
