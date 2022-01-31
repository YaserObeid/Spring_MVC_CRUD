package com.obeid.springdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.obeid.springdemo.dao.CustomerDAO;
import com.obeid.springdemo.entity.Customer;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	// inject a customerDAO
	@Autowired
	private CustomerDAO customerDAO;
	
	//restrict this method to handle GET requesters
	@GetMapping("/list")
	public String customerList(Model model) {
		
		// get customer from dao
		List<Customer> customers = customerDAO.getCustomers();
		
		// add customer list to the model
		model.addAttribute("customers", customers);
		
		return "customer-list";
	}
}
