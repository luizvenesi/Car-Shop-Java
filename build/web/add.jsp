<%@page import="com.dbconnectionutil.org.DbConnection"%>
<%@page import="java.sql.*" %>
<%@page import="java.lang.Integer" %>
<% 
Connection conn = null;
PreparedStatement ps = null;
ResultSet rs = null;

String id = session.getAttribute("id").toString();
int id_member = Integer.parseInt(id);
String brand = request.getParameter("brand");
String model = request.getParameter("model");
String year = request.getParameter("year");
String mileage = request.getParameter("mileage");
String price = request.getParameter("price");
String transmission = request.getParameter("transmission");
String type = request.getParameter("type");

try{
	
	int row = 0;
	
	String query = "INSERT INTO cars(brand, model, year, mileage, price, transmission, type, id_members, date) VALUES (?,?,?,?,?,?,?,?,?)";
	
	conn = DbConnection.getConnection();
	ps = conn.prepareStatement(query);
	ps.setString(1, brand);
	ps.setString(2, model);
	ps.setString(3, year);
	ps.setString(4, mileage);
	ps.setString(5, price);
	ps.setString(6, transmission);
	ps.setString(7, type);
	ps.setInt(8, id_member);
	ps.setDate(9, new java.sql.Date(System.currentTimeMillis()));
	
	row = ps.executeUpdate();
	
	if(row>0){
		
		response.sendRedirect("add_car.jsp");
	}
	else{
		out.println("Error insert in the table");
	}
	

}
catch(Exception ex){
	 throw new RuntimeException(ex);
	//out.println(ex.getMessage());
}

%>
