package com.krushiSevaCenter.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.krushiSevaCenter.entity.Product;

@Repository
public interface ProductDao extends CrudRepository<Product, Integer> {

	@Override
	List<Product> findAll();

    @Query("SELECT p FROM Product p WHERE LOWER(p.productName) LIKE LOWER(CONCAT('%', :productName, '%'))")
    List<Product> findByProductNameContainingIgnoreCase(@Param("productName") String productName);


   	
}
