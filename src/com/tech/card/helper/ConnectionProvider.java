package com.tech.card.helper;
import java.sql.*;
public class ConnectionProvider
{
	private static Connection con;
public static Connection getConnection() 
 {
	try {
		if(con==null) {
		//driver class load
		Class.forName("com.mysql.jdbc.Driver");
		//create a connection..
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cardzilla", "root", "");
	} 
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return con; 
}

}
