package com.gs.grassoft.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class UserCredentials {
	@Id
	private String emailId;
	
	private String firstName, lastName, password,contactNumber;
	boolean termsAgree=false;

	
	
	
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

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public boolean isTermsAgree() {
		return termsAgree;
	}

	public void setTermsAgree(boolean termsAgree) {
		this.termsAgree = termsAgree;
	}

}
