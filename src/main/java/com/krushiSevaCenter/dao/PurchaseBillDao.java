package com.krushiSevaCenter.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.krushiSevaCenter.entity.PurchaseBill;

public interface PurchaseBillDao  extends CrudRepository<PurchaseBill, Long>{

	@Override
	List<PurchaseBill> findAll();
}
