package com.bankRetail.Controller;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.bankRetail.Entity.Address;
import com.bankRetail.Entity.Customer;
import com.bankRetail.Entity.Transactions;
import com.bankRetail.bussiness.CustomerBussiness;

import jakarta.servlet.http.HttpServletRequest;


@RestController
public class BankController {
	
	@Autowired
	CustomerBussiness cb;
	
	int accID;
	
	@GetMapping("/")
	public ModelAndView bankController() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customerLogin");
		return mv;
	}
	
	@GetMapping("/dashboard")
	public  ModelAndView verifyCustomer(HttpServletRequest req, Model model) {
		ModelAndView mv = new ModelAndView();
		Customer cust = cb.authenticateUser(Integer.parseInt(req.getParameter("accountNo")), req.getParameter("password"))	;	
		if(cust!=null) {
			accID = cust.getAccountNo();
			model.addAttribute("cust",cust);
			mv.setViewName("/dashboard");
			return mv;
		}
		mv.setViewName("customerLogin");
		return mv;
	}
	
	@GetMapping("/register")
	public ModelAndView customerLogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customerSignUp");
		return mv;
	}
	
	
	@PostMapping("/addCustomer")
	public @ResponseBody ModelAndView customerData(Customer cust,Address address, Model model)
	{
		ModelAndView mv = new ModelAndView();		
		boolean status = cb.saveCustomer(cust,address);
		if(status) {
			mv.setViewName("customerLogin");
			return mv;
		}
		mv.setViewName("customerSignUp");
		return mv;
	}
	
	@GetMapping("/addMoney")
	public ModelAndView addMoney(HttpServletRequest req)
	{
		ModelAndView mv = new ModelAndView();
		
		Customer cust = cb.findUserById(accID);
		cb.addBalance(cust, Double.parseDouble(req.getParameter("amount")));
		
		mv.setViewName("dashboard");
		return mv;
	}
	
	
	@GetMapping("/list")
	public ModelAndView listdisplay(Model model)
	{
		ModelAndView mv = new ModelAndView();
		List<Customer> list = cb.findall();	
		List<Address> addlist=cb.findallAddress();
		mv.addObject("list",list);
		mv.addObject("addlist",addlist);
		
		mv.setViewName("Customerdisplay");		
		return mv ;
	}
		
	
	@GetMapping("/deleteCustomer")
	public ModelAndView customerDelete(HttpServletRequest req)
	{		
		cb.remove(Integer.parseInt(req.getParameter("accountNo")));
		cb.removeAddress(Integer.parseInt(req.getParameter("accountNo")));		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");		
		return mv ;
	}
	
	@GetMapping("/transactions")
	public ModelAndView customerTransactions(Transactions transaction) {
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		String formatDate = dateFormat.format(date);
//		model.addAttribute("time", formatDate);
		Customer cust = cb.findUserById(accID);
		cb.saveTransaction(cust,transaction);
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("transactions");
		
		
		
		return mv;
	}
	
}
