package com.gym.model;

public class GymObject {
	
	private String username;
	private String firstname;
	private String lastname;
	private String email;
	private String phone;
	private int age;
	private String gender;
	private String plan;
	private String password;
	
	public GymObject() {}

	public GymObject(String us,String fn,String ln,String em,String ph,String gen,String pla,String pwd,int ag) {
		this.username =us;
		this.firstname =fn;
		this.lastname =ln;
		this.email=em;
		this.phone=ph;
		this.age=ag;
		this.gender=gen;
		this.plan=pla;
		this.password=pwd;
		
		
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
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

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPlan() {
		return plan;
	}

	public void setPlan(String plan) {
		this.plan = plan;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	public String toString() {
		return username;
	}
}
