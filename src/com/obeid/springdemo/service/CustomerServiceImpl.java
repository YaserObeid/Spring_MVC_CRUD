package com.obeid.springdemo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.obeid.springdemo.dao.CustomerDAO;
import com.obeid.springdemo.entity.Customer;

@Service
public class CustomerServiceImpl implements CustomerService {
	
	// inject the customerDAO
	@Autowired
	private CustomerDAO customerDAO;

	@Override
	@Transactional
	public List<Customer> getCustomers() {
		
		return customerDAO.getCustomers();
	}

	@Override
	@Transactional
	public void saveCustomer(Customer customer) {
		 
		customerDAO.saveCustomer(customer);
		
	}

}
