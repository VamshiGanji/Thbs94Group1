package com.torryharris.Electroware.model;

public class User {
 
	private String firstName;
	private String lastName;
	private long phone;
	private String userName;
	private String password;
	private String gender;
	private String dateOfBirth;
	private String address;
	public User(String firstName, String lastName, long phone, String userName, String password, String gender,
			String dateOfBirth, String address) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.phone = phone;
		this.userName = userName;
		this.password = password;
		this.gender = gender;
		this.dateOfBirth = dateOfBirth;
		this.address = address;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "User [firstName=" + firstName + ", lastName=" + lastName + ", phone=" + phone + ", userName=" + userName
				+ ", password=" + password + ", gender=" + gender + ", dateOfBirth=" + dateOfBirth + ", address="
				+ address + "]";
	}
	
}