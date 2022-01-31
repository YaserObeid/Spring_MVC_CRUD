package com.obeid.springdemo.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.obeid.springdemo.entity.Customer;


@Repository
public class CustomerDAOImpl implements CustomerDAO {
	
	// inject session factory
	@Autowired
	private SessionFactory sessionFactory;
    
	
	// get list of all customers
	@Override
	public List<Customer> getCustomers() {
		
		// get current session
		Session currentSession = 
				sessionFactory.getCurrentSession();
		
		// create query to fetch the data
		// import from 'org.hibernate.query.Query;'
		Query<Customer> query = 
				currentSession.createQuery("from Customer", Customer.class);
		
		// Execute the query & get c customer list
		
		List<Customer> customers = query.getResultList();
		
		return customers;
	}
    
	// save or update customer (with id -> update)
	
	@Override
	public void saveCustomer(Customer customer) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		// save customer 
		
		currentSession.saveOrUpdate(customer);
		
	}
	
	// get customer by id

	@Override
	public Customer getCustomer(int id) {
		Session currentSession = sessionFactory.getCurrentSession();
		Customer customer = currentSession.get(Customer.class, id);
		return customer;
	}

}
