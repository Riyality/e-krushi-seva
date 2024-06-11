package com.krushiSevaCenter.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.krushiSevaCenter.entity.CustomerEntity;

@Repository
public interface CustomerDao extends CrudRepository<CustomerEntity, Integer> {
	
	@Override
	List<CustomerEntity> findAll();
}
