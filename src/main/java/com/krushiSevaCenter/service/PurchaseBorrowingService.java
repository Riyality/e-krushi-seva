package com.krushiSevaCenter.service;

import java.util.List;
import java.util.Optional;

import javax.persistence.EntityNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.krushiSevaCenter.dao.PurchaseBillDao;
import com.krushiSevaCenter.dao.PurchaseBorrowingDao;
import com.krushiSevaCenter.entity.PurchaseBill;
import com.krushiSevaCenter.entity.PurchaseBillHistory;

@Service
public class PurchaseBorrowingService {

	@Autowired
	private PurchaseBillDao purchasedao;
	
	@Autowired
	private PurchaseBorrowingDao  borrowingDao;   

	public List<PurchaseBill> borrowedCustomers() {

		return purchasedao.findByRemainingAmountGreaterThan(0.0);
	}

	public PurchaseBill getDetails(long id) {
		Optional<PurchaseBill> purchhaseBill = purchasedao.findById(id);

		return purchhaseBill.orElse(null);
	}

	public boolean updateBill(PurchaseBill purchaseBill) {
		if (purchaseBill != null) {
			purchasedao.save(purchaseBill);
			return true;
		}
		return false;
	}

	@Transactional
	public void saveBillHistory(PurchaseBillHistory billHistory) {	
	    borrowingDao.save(billHistory);
	}

	/*@Transactional
	public void updateCustomerBill(CustomerBill customerBill, double onlinePayment, double cashPayment) {
	    customerBillDao.updatePayments(customerBill.getId(), onlinePayment, cashPayment);
	}*/

	public List<PurchaseBillHistory> getBillHistoryByBillId(Long purchaseId) {
	   
	    return borrowingDao.findByPurchaseId_Id(purchaseId);
	}

	  @Transactional
	    public void updateCustomerBill(PurchaseBill purchaseBill, double onlinePayment, double cashPayment, double paidAmount, double remainingAmount, String payStatus) {
		  purchasedao.updatePayments(purchaseBill.getId(), onlinePayment, cashPayment, paidAmount, remainingAmount, payStatus);
	    }
	  
	    @Transactional(readOnly = true)
	    public PurchaseBill findPurchaseBillById(Long purchaseId) {
	        return purchasedao.findById(purchaseId).orElseThrow(() -> new EntityNotFoundException("Purchase Bill not found"));
	    }
}
