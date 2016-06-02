package com.bvrit.happyride.beans;

public class MemberBeans {
	public int id;
	public String first_name;
	public String last_name;
	public String email;
	public int contact_number;
	public String driving_licence_number;
	public String driving_licence_valid_from;
	public String username;
	public String password;
	MemberBeans(String first_name,String last_name,String email, int contact_number,String driving_licence_number,String driving_licence_valid_from){
		this.first_name = first_name;
		this.last_name = last_name;
		this.email = email;
		this.contact_number = contact_number;
		this.driving_licence_number = driving_licence_number;
		this.driving_licence_valid_from = driving_licence_valid_from;
	}
	public MemberBeans(String username, String password){
		this.username = username;
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public String getPassword() {
		return password;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public void setpassword(String password) {
		this.password = password;
	}
	

}