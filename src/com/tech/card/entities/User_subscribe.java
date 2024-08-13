package com.tech.card.entities;
import java.sql.Timestamp;
import java.sql.*;
public class User_subscribe {
	private String name;
	private String email;
	private Timestamp subs_date;
	
	public User_subscribe(String name, String email) {
		this.name=name;
		this.email=email;
		
	}
public User_subscribe() {
	
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public Timestamp getSubs_date() {
	return subs_date;
}
public void setSubs_date(Timestamp subs_date) {
	this.subs_date = subs_date;
}
}
