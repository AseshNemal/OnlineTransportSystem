package com.model;

public class Passenger {
	private int pid;
	private String name;
	private String email;
	private String phoneNumber;
	private String district;
	private String username;
	private String password;
	
	
	public Passenger(int pid, String name, String email, String phoneNumber, String district, String username,
			String password) {
		this.pid = pid;
		this.name = name;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.district = district;
		this.username = username;
		this.password = password;
	}


	public int getPid() {
		return pid;
	}


	public String getName() {
		return name;
	}


	public String getEmail() {
		return email;
	}


	public String getPhoneNumber() {
		return phoneNumber;
	}


	public String getDistrict() {
		return district;
	}


	public String getUsername() {
		return username;
	}


	public String getPassword() {
		return password;
	}
	
	
	
	
	

}
