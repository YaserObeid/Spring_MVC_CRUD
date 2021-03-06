package com.obeid.springdemo.service;

import java.util.List;

import com.obeid.springdemo.entity.Customer;

public interface CustomerService {
	
	public List<Customer> getCustomers(int sortField);

	public void saveCustomer(Customer customer);

	public Customer getCustomer(int id);

	public void deleteCustomer(int id);

	public List<Customer> searchCustomers(String searchedText);
	

}
