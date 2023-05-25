package com.bankRetail.bussiness;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bankRetail.Entity.Address;
import com.bankRetail.Entity.Customer;
import com.bankRetail.Entity.Transactions;
import com.bankRetail.Interface.AddressRepository;
import com.bankRetail.Interface.BankRepository;
import com.bankRetail.Interface.TransactionRepository;
import com.bankRetail.Validations.NameValidation;

@Service
public class CustomerBussiness {
	@Autowired
	private BankRepository repo;
	
	@Autowired
	private AddressRepository addressRepo;
	
	@Autowired
	private NameValidation nv;
	
	@Autowired
	private TransactionRepository transrepo;

	
	public boolean saveCustomer(Customer cust, Address address) {
		boolean result=false;
		boolean flag = (nv.requestInputName(cust.getFirstName()) && nv.requestInputName(cust.getLastName()) &&
				nv.requestInputMobile(cust.getMobileNumber()) && nv.requestInputPancard(cust.getPanCard()) )	;
		
		if(flag) {
		repo.save(cust);
		addressRepo.save(address);
		result = true;}
		else
		{
			System.out.println("INVALID INPUTS !!!!!!!!!!");
		}
		return result;
	}
	
	public List findall() {
		return (List) repo.findAll();
	}
	public List findallAddress() {
		return (List) addressRepo.findAll();
	}
	
	public void remove(Integer accountNo) {
		repo.deleteById(accountNo);
	}
	
	public void removeAddress(Integer accountNo) {
		addressRepo.deleteById(accountNo);
	}
	
	public Customer authenticateUser(int accountNo, String pass) {
		
		Optional<Customer> foundUser = repo.findById(accountNo); 
		if(foundUser.isPresent()) {
			if(foundUser.get().getPassword().equals(pass) )
			{
				return foundUser.get();
			}
		}
		return null;
		
	}
	
	public Customer findUserById(int accountNo) {
		Optional<Customer> foundUser = repo.findById(accountNo);
		
		return foundUser.get();
	}
	
	public void addBalance(Customer cust, double amount) {
		
		cust.setBalance(amount+cust.getBalance());
		repo.save(cust);
	}
	
	public void saveTransaction(Customer cust,Transactions trans)
	{
		transrepo.save(trans);
		cust.setBalance(cust.getBalance()-trans.getTransactionAmount());
		repo.save(cust);
		
	}
	
	

}
