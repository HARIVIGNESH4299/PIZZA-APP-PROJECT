package com.model;

import java.util.Objects;

public class User {
	private String username;
	private long phonenumber;
	private String email;
	private String address;
	
	private Double wallet;
	private String password;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public long getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(long phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Double getWallet() {
		return wallet;
	}
	public void setWallet(Double wallet) {
		this.wallet = wallet;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public User(String username, long phonenumber, String email, String address, Double wallet, String password) {
		super();
		this.username = username;
		this.phonenumber = phonenumber;
		this.email = email;
		this.address = address;
		this.wallet = wallet;
		this.password = password;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "User [username=" + username + ", phonenumber=" + phonenumber + ", email=" + email + ", address="
				+ address + ", wallet=" + wallet + ", password=" + password + "]";
	}
	

	
	
}
