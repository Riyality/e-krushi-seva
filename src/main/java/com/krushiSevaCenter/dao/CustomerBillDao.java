package com.krushiSevaCenter.dao;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

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

	


}
