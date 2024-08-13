package com.tech.card.entities;

import java.sql.Timestamp;
import java.sql.*;
public class User_review {
	private String name;
	private String email;
	private String message;
	private Timestamp review_date;
	public User_review(String name, String email, String message) {
		super();
		this.name = name;
		this.email = email;
		this.message = message;
		
	}
	public User_review() {
		
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
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Timestamp getReview_date() {
		return review_date;
	}
	public void setReview_date(Timestamp review_date) {
		this.review_date = review_date;
	}

	
}
