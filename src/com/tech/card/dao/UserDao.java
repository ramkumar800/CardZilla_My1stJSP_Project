package com.tech.card.dao;
import java.sql.*;

import com.tech.card.entities.User_register;
import com.tech.card.entities.User_review;
import com.tech.card.entities.User_subscribe;
public class UserDao {
	private Connection con;

	public UserDao(Connection con) {
		this.con = con;
	}
	
public boolean saveuser_review(User_review user1) {
	boolean f1=false;
	try {
		String query1="insert into user_review(name,email,message) values(?,?,?)";
		PreparedStatement ps1=this.con.prepareStatement(query1);
		ps1.setString(1, user1.getName());
		ps1.setString(2,user1.getEmail());
		ps1.setString(3, user1.getMessage());
		ps1.executeUpdate();
		f1=true;
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return f1;
}

public boolean saveuser_register(User_register user2) {
	boolean f2=false;
	try {
		String query2="insert into user_register(name,email,phone,cardtype) values(?,?,?,?)";
		PreparedStatement ps2=this.con.prepareStatement(query2);
		ps2.setString(1, user2.getName());
		ps2.setString(2,user2.getEmail());
		ps2.setString(3, user2.getPhone());
		ps2.setString(4,user2.getCardtype());
		ps2.executeUpdate();
		f2=true;
		
		}
	catch(Exception e) {
		e.printStackTrace();
	}
	return f2;
}
public boolean saveuser_subscribe(User_subscribe user3) {
	boolean f3=false;
	try {
		String query3="insert into user_subscribe(name,email) values(?,?)";
		PreparedStatement ps3=this.con.prepareStatement(query3);
		ps3.setString(1, user3.getName());
		ps3.setString(2,user3.getEmail());
		ps3.executeUpdate();
		f3=true;
		}
	catch(Exception e) {
		e.printStackTrace();
	}
	return f3;
}
}
