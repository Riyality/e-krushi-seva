package com.krushiSevaCenter.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.krushiSevaCenter.entity.customer;

@Repository
public interface CustomerDao extends CrudRepository<customer, Integer> {
	
	@Override
	List<customer> findAll();
}
