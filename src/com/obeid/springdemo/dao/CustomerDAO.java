package com.obeid.springdemo.dao;

import java.util.List;

import com.obeid.springdemo.entity.Customer;

public interface CustomerDAO {
	
	public List<Customer> getCustomers();

	public void saveCustomer(Customer customer);
		
	

}
