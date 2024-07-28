package com.krushiSevaCenter.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.krushiSevaCenter.entity.CustomerBill;
import com.krushiSevaCenter.entity.customer;

@Repository
public interface CustomerDao extends CrudRepository<customer, Integer> {
	
	@Override
	List<customer> findAll();

	 @Query("SELECT c FROM customer c WHERE c.customer_name LIKE %:customerName%")
	    List<customer> findByCustomerNameContainingIgnoreCase(@Param("customerName") String customerName);

	    @Query("SELECT b FROM CustomerBill b WHERE b.customerId.customer_ID = :customerId")
	    List<CustomerBill> findByCustomerId(@Param("customerId") int customerId); 
    }
