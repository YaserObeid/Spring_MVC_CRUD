package com.obeid.springdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.obeid.springdemo.entity.Customer;
import com.obeid.springdemo.service.CustomerService;
import com.obeid.springdemo.util.SortUtils;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	// inject a customerService
	@Autowired
	private CustomerService customerService;
	
	
	
	//restrict this method to handle GET requesters
	@GetMapping("/list")
	public String customerList(Model model,
								@RequestParam(required = false)
								String sort) {
		
		
		List<Customer> customers = null;
		// if sort is provided
		if(sort != null) {
			int sortField = Integer.parseInt(sort);
			customers = customerService.getCustomers(sortField);
		}
		
		// if sort is NOT provided
		else {
			customers = customerService.getCustomers(SortUtils.LAST_NAME);
		}
		
		// add customer list to the model
		model.addAttribute("customers", customers);
		
		return "customer-list";
	}
	
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model model) {
		
		Customer customer = new Customer();
		
		model.addAttribute("customer", customer);
		
		return "customer-form";
	}
	
	// add customer
	
	@PostMapping("/saveCustomer")
	public String saveCustomer(
			@ModelAttribute("customer")
			Customer customer) {
		
		customerService.saveCustomer(customer);
		
		return "redirect:/customer/list";
	}
	
	// load the update form
	
	@GetMapping("/showFormForUpdate") 
	public String showFormForUpdate(
			@RequestParam("customerId") 
			int id,
			Model model) {
		// get customer for the given id
		Customer customer = customerService.getCustomer(id);
		
		// add customer to model
		model.addAttribute("customer", customer);
		
		return "customer-form";
	}
	
	// delete customer by id
	
	@GetMapping("/delete")
	public String deleteCustomer(
			@RequestParam("customerId") 
			int id) {
		customerService.deleteCustomer(id);
		return "redirect:/customer/list";
		
	}
	
	// search customers
	
	@GetMapping("/searchCustomers")
	public String searchCustomers(
		@RequestParam("searchedText") 
		String searchedText, Model model){
		
		List<Customer> customers = customerService.searchCustomers(searchedText);
		
		model.addAttribute("customers", customers);
		
		return "customer-list";
	}
	
			
	
	
	
}
