package com.dbconnectionutil.org;

import java.sql.Connection;
import java.sql.DriverManager;



public class DbConnection {

	static String HOST = "jdbc:mysql://eu-cdbr-azure-north-e.cloudapp.net:3306/car_shop01";
	
	static String USER = "b6473f41ee8e71";
	
	static String PASSWORD = "357995ac";
	
	static Connection conn  = null;
	
	public static Connection getConnection(){
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			conn = DriverManager.getConnection(HOST, USER, PASSWORD);
			
			System.out.println("Connection Successfully... in DB");
			
		}catch(Exception ex){
			ex.printStackTrace();
			
		}
		
	return conn;	
		
		
		
	}
	
	
	
}

