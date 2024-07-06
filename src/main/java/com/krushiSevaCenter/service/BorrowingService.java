package com.krushiSevaCenter.service;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.krushiSevaCenter.dao.BorrowingDao;
import com.krushiSevaCenter.dao.CustomerBillDao;
import com.krushiSevaCenter.entity.BillHistory;
import com.krushiSevaCenter.entity.CustomerBill;

@Service
public class BorrowingService {

	@Autowired
	private CustomerBillDao customerBillDao;

	@Autowired
	private BorrowingDao borrowingDao;

	public List<CustomerBill> borrowedCustomers() {

		return customerBillDao.findByRemainingAmountGreaterThan(0.0);
	}

	public CustomerBill getDetails(long id) {
		Optional<CustomerBill> customerbill = customerBillDao.findById(id);

		return customerbill.orElse(null);
	}

	public boolean updateBill(CustomerBill customerBill) {
		if (customerBill != null) {
			customerBillDao.save(customerBill);
			return true;
		}
		return false;
	}

	@Transactional
	public void saveBillHistory(BillHistory billHistory) {
	    borrowingDao.save(billHistory);
	}

	@Transactional
	public void updateCustomerBill(CustomerBill customerBill, double onlinePayment, double cashPayment) {
	    customerBillDao.updatePayments(customerBill.getId(), onlinePayment, cashPayment);
	}	
	/*@Transactional
	public void updateCustomerBill( long id , double onlinePayment, double cashPayment) {
		customerBillDao.updatePayments(id, onlinePayment, cashPayment);
	}
*/

}