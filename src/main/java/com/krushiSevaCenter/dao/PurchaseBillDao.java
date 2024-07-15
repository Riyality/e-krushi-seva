package com.krushiSevaCenter.dao;

import java.time.LocalDate;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.krushiSevaCenter.entity.PurchaseBill;

public interface PurchaseBillDao  extends CrudRepository<PurchaseBill, Long>{

	@Override
	List<PurchaseBill> findAll();

	  List<PurchaseBill> findByRemainingAmountGreaterThan(double remainingAmount);
	  
	  long countByNextPaymentStatus(LocalDate nextPaymentStatus);
	  
	  @Modifying
	    @Transactional
	    @Query("UPDATE PurchaseBill pb SET pb.onlinePayment = :onlinePayment, pb.cashPayment = :cashPayment, pb.paidAmount = :paidAmount, pb.remainingAmount = :remainingAmount, pb.payStatus = :payStatus WHERE pb.id = :billId")
	    void updatePayments(@Param("billId") Long billId, 
	                        @Param("onlinePayment") double onlinePayment, 
	                        @Param("cashPayment") double cashPayment, 
	                        @Param("paidAmount") double paidAmount, 
	                        @Param("remainingAmount") double remainingAmount, 
	                        @Param("payStatus") String payStatus);
}
