package com.krushiSevaCenter.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krushiSevaCenter.dao.CustomerDao;
import com.krushiSevaCenter.entity.CustomerBill;
import com.krushiSevaCenter.entity.customer;

@Service
public class CustomerService {

	@Autowired
	private CustomerDao customerDao;

	public boolean addCustomer(customer customer) {
		try {
			customerDao.save(customer);
			return true;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

	public List<customer> getAllCustomers() {
		return customerDao.findAll();
	}

	public boolean delete(int Customer_ID) {
		try {
			customerDao.deleteById(Customer_ID);
			return true;

		} catch (Exception e) {
			e.printStackTrace();

			return false;
		}

	}

	public customer getById(int Customer_ID) {
		Optional<customer> customer = customerDao.findById(Customer_ID);
		return customer.orElse(null);
	}

	public boolean updateCustomer(customer customer) {

		if (customer != null) {
			customerDao.save(customer);
			return true;
		} else {
			return false;
		}
	}

	public customer getDetails(int customer_ID) {
		Optional<customer> customer = customerDao.findById(customer_ID);
		return customer.orElse(null);
	}

    public List<customer> searchCustomersByName(String customerName) {
    	  return customerDao.findByCustomerNameContainingIgnoreCase(customerName);
    }

    public double getTotalRemainingAmount(int customerId) {
        List<CustomerBill> bills = customerDao.findByCustomerId(customerId);
        return bills.stream().mapToDouble(CustomerBill::getRemainingAmount).sum();
    }



 }
