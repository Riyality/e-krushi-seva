package com.krushiSevaCenter.service;

import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.krushiSevaCenter.dao.CustomerDao;
import com.krushiSevaCenter.entity.CustomerEntity;

@Service
public class CustomerService {

	@Autowired
	private CustomerDao dao;

	public boolean addCustomer(CustomerEntity customer) {
		try {
			dao.save(customer);
			return true;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

	public List<CustomerEntity> getAllCustomers() {
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

	public CustomerEntity getById(int Customer_ID) {
		Optional<CustomerEntity> customer = dao.findById(Customer_ID);
		return customer.orElse(null);
	}

	public boolean updateCustomer(CustomerEntity customer) {

		if (customer != null) {
			dao.save(customer);
			return true;
		} else {
			return false;
		}
	}

	public CustomerEntity getDetails(int customer_ID) {
		Optional<CustomerEntity> customer = dao.findById(customer_ID);
		return customer.orElse(null);
	}

}
