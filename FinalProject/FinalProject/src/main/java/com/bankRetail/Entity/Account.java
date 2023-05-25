//package com.bankRetail.Entity;
//
//import org.springframework.stereotype.Component;
//
//import jakarta.persistence.Entity;
//import jakarta.persistence.GeneratedValue;
//import jakarta.persistence.GenerationType;
//import jakarta.persistence.Id;
//import jakarta.persistence.OneToOne;
//import jakarta.persistence.PrimaryKeyJoinColumn;
//import jakarta.persistence.Table;
//
//@Component(value="prototype")
//@Entity
//@Table(name="accounts")
//public class Account {
//		
//	@Id
//	@GeneratedValue(strategy = GenerationType.IDENTITY)
//	private int accNo;
//	private String IFSC = "LCSID0001234";
//	private String accountType;
//	private double balance;
//	
//	@OneToOne
//    @PrimaryKeyJoinColumn(name = "accNo")
//    Customer CustomerData;
//	
//	public String getIFSC() {
//		return IFSC;
//	}
//
//	
//	public String getAccountType() {
//		return accountType;
//	}
//	public void setAccountType(String accountType) {
//		this.accountType = accountType;
//	}
//	public double getBalance() {
//		return balance;
//	}
//	public void setBalance(double balance) {
//		this.balance = balance;
//	}
//
//	
//	
//}
