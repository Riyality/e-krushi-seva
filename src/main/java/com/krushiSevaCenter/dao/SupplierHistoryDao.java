package com.krushiSevaCenter.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.krushiSevaCenter.entity.SupplierHistory;

public interface SupplierHistoryDao  extends CrudRepository<SupplierHistory, Long>{
	
	@Override
	List<SupplierHistory> findAll();

}
