package com.krushiSevaCenter.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.krushiSevaCenter.entity.Product;

@Repository
public interface ProductDao extends CrudRepository<Product, Integer> {

	@Override
	List<Product> findAll();
	
}
