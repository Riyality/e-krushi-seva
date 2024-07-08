package com.krushiSevaCenter.dao;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.krushiSevaCenter.dto.BillRequestDto;
import com.krushiSevaCenter.entity.CustomerBill;

@Repository
public interface CustomerBillDao   extends CrudRepository<CustomerBill, Long>{
	
	@Override
	List<CustomerBill> findAll();
	
	 List<CustomerBill> findByNextPaymentStatus(LocalDate nextPaymentStatus);

	    long countByNextPaymentStatus(LocalDate nextPaymentStatus);
	    
	    long countByRemainingAmountGreaterThan(double remainingAmount);
	    
	    List<CustomerBill> findByRemainingAmountGreaterThan(double remainingAmount);

		void save(BillRequestDto dto);

		@Modifying
		@Transactional
		@Query("UPDATE CustomerBill cb SET cb.onlinePayment = :onlinePayment, cb.cashPayment = :cashPayment, cb.paidAmount = :paidAmount, cb.remainingAmount = :remainingAmount, cb.payStatus = :payStatus WHERE cb.id = :billId")
		void updatePayments(@Param("billId") Long billId, 
		                    @Param("onlinePayment") double onlinePayment, 
		                    @Param("cashPayment") double cashPayment, 
		                    @Param("paidAmount") double paidAmount, 
		                    @Param("remainingAmount") double remainingAmount, 
		                    @Param("payStatus") String payStatus);
	
	}

	  
	


