package com.krushiSevaCenter.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.krushiSevaCenter.entity.ProductEntity;

@Repository
public interface ProductDao extends CrudRepository<ProductEntity, Integer> {

	@Override
	List<ProductEntity> findAll();

	
}
