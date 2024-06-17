package com.krushiSevaCenter.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.krushiSevaCenter.entity.CustomerHistory;

@Repository
public interface CustomerHistoryDao  extends CrudRepository<CustomerHistory, Long>{

	@Override
	List<CustomerHistory> findAll();
}
