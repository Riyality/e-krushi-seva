package com.krushiSevaCenter.service;

import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.krushiSevaCenter.dao.CustomerDao;
import com.krushiSevaCenter.entity.customer;

@Service
public class CustomerService {

	@Autowired
	private CustomerDao dao;

	public boolean addCustomer(customer customer) {
		try {
			dao.save(customer);
			return true;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

	public List<customer> getAllCustomers() {
		return dao.findAll();
	}

	public boolean delete(int Customer_ID) {
		try {
			dao.deleteById(Customer_ID);
			return true;

		} catch (Exception e) {
			e.printStackTrace();

			return false;
		}

	}

	public customer getById(int Customer_ID) {
		Optional<customer> customer = dao.findById(Customer_ID);
		return customer.orElse(null);
	}

	public boolean updateCustomer(customer customer) {

		if (customer != null) {
			dao.save(customer);
			return true;
		} else {
			return false;
		}
	}

	public customer getDetails(int customer_ID) {
		Optional<customer> customer = dao.findById(customer_ID);
		return customer.orElse(null);
	}

}
