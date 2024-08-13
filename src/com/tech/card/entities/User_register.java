package com.tech.card.entities;

import java.sql.Timestamp;
import java.sql.*;

public class User_register {
	private String name;
	private String email;
	private String phone;
	private String cardtype;
	private Timestamp reg_date;
	public User_register(String name, String email, String phone, String cardtype) {
		
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.cardtype = cardtype;
		
	}
	
	public User_register() {
	
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getCardtype() {
		return cardtype;
	}
	public void setCardtype(String cardtype) {
		this.cardtype = cardtype;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	
}
