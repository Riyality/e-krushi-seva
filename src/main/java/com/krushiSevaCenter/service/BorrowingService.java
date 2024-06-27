package com.krushiSevaCenter.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krushiSevaCenter.dao.CustomerBillDao;
import com.krushiSevaCenter.entity.CustomerBill;
import com.krushiSevaCenter.entity.Product;

@Service
public class BorrowingService {

	 @Autowired
	    private CustomerBillDao customerBillDao;
	
	public List<CustomerBill> borrowedCustomers() {
		
		 return customerBillDao.findByRemainingAmountGreaterThan(0.0);
	}

	
	public CustomerBill getDetails(long id) {
		Optional<CustomerBill> customerbill  =customerBillDao.findById(id);

		return customerbill.orElse(null);
	}


	public boolean updateBill(CustomerBill customerBill) {
        if (customerBill != null) {
            customerBillDao.save(customerBill);
            return true;
        }
        return false;
    }


}

