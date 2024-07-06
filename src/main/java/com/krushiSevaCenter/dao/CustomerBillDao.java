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
	    @Query("UPDATE CustomerBill cb SET cb.onlinePayment = cb.onlinePayment + :onlinePayment, cb.cashPayment = cb.cashPayment + :cashPayment WHERE cb.id = :billId")
	    void updatePayments(@Param("billId") Long billId, @Param("onlinePayment") double onlinePayment, @Param("cashPayment") double cashPayment);
	}

	  
	


