package com.bankRetail.Entity;

public class CreateAccount {
	private String firstName;
	private String lastName;
	private int mobileNumber;
	private String emailId;
	private String panCard;
	private int mPin;
	
	
	
	
	public int getmPin() {
		return mPin;
	}
	public void setmPin(int mPin) {
		this.mPin = mPin;
	}
	public String getPanCard() {
		return panCard;
	}
	public void setPanCard(String panCard) {
		this.panCard = panCard;
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
	public int getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(int mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	} 
	

}
