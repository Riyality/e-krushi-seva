package com.krushiSevaCenter.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.krushiSevaCenter.entity.CustomerBill;

@Repository
public interface CustomerBillDao   extends CrudRepository<CustomerBill, Long>{
	
	@Override
	List<CustomerBill> findAll();

}
