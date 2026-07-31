package com.food_Application.model;

import java.sql.Timestamp;

public class User {
	private int user_Id;
	private String user_Name;
	private String email;
	private String password;
	private String address;
	private String role;
	private Timestamp created_Date;
	private Timestamp last_Login_Date;
	
	public User() {
		
	}	

	public User( String user_Name, String email, String password, String address, String role,int user_Id) {
		super();
		this.user_Id = user_Id;
		this.user_Name = user_Name;
		this.email = email;
		this.password = password;
		this.address = address;
		this.role = role;
	}



	public User(String user_Name, String email, String password, String address, String role) {
		this.user_Name = user_Name;
		this.email = email;
		this.password = password;
		this.address = address;
		this.role = role;
	}
	
	
	public User(String email) {
		this.email = email;
	}

	public User(int user_Id, String user_Name, String email, String password, String address, String role,
			Timestamp created_Date, Timestamp last_Login_Date) {
		super();
		this.user_Id = user_Id;
		this.user_Name = user_Name;
		this.email = email;
		this.password = password;
		this.address = address;
		this.role = role;
		this.created_Date = created_Date;
		this.last_Login_Date = last_Login_Date;
	}

	public User(String user_Name, String email, String password, String address, String role, Timestamp created_Date,
			Timestamp last_Login_Date) {
		super();
		this.user_Name = user_Name;
		this.email = email;
		this.password = password;
		this.address = address;
		this.role = role;
		this.created_Date = created_Date;
		this.last_Login_Date = last_Login_Date;
	}

	public int getUser_Id() {
		return user_Id;
	}

	public void setUser_Id(int user_Id) {
		this.user_Id = user_Id;
	}

	public String getUser_Name() {
		return user_Name;
	}

	public void setUser_Name(String user_Name) {
		this.user_Name = user_Name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public Timestamp getCreated_Date() {
		return created_Date;
	}

	public void setCreated_Date(Timestamp created_Date) {
		this.created_Date = created_Date;
	}

	public Timestamp getLast_Login_Date() {
		return last_Login_Date;
	}

	public void setLast_Login_Date(Timestamp last_Login_Date) {
		this.last_Login_Date = last_Login_Date;
	}

	@Override
	public String toString() {
		return "User [user_Id=" + user_Id + ", user_Name=" + user_Name + ", email=" + email + ", password=" + password
				+ ", address=" + address + ", role=" + role + ", created_Date=" + created_Date + ", last_Login_Date="
				+ last_Login_Date + "]";
	}

}
