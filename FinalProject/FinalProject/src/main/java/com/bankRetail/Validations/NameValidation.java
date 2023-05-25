package com.bankRetail.Validations;

import org.springframework.stereotype.Component;

@Component
public class NameValidation {
	
	public boolean requestInputMobile(String mobileNumber) {
		if(mobileNumber.length() != 10) {
			return false;
		} else  {
			char[] chars = mobileNumber.toCharArray();
			for(char c : chars){
		         if(Character.isDigit(c)){
		           continue;
		         } else {
		        	 return false;
		         }
		      }
			return true;
		}
	}
	
	public boolean requestInputName(String name) {
		if(name=="") {
			return false;
		} else {
			char[] chars = name.toCharArray();
			for(char c : chars){
		         if(Character.isLetter(c)){
		           continue;
		         } else {
		        	 return false;
		         }
		      }
			return true;
		}
	}
	
	public boolean requestInputPincode(String pinCode) {
		if(pinCode.length() != 6) {
			return false;
		} else  {
			char[] chars = pinCode.toCharArray();
			for(char c : chars){
		         if(Character.isDigit(c)){
		           continue;
		         } else {
		        	 return false;
		         }
		      }
			return true;
		}
	}
	
	public boolean requestInputPancard(String panCard) {
		if(panCard.length() != 10) {
			return false;
		} else  {
			char[] chars = panCard.toCharArray();
			for(char c : chars){
		         if(Character.isDigit(c) || Character.isLetter(c)){
		           continue;
		         } else {
		        	 return false;
		         }
		      }
			return true;
		}
	}
	


}
