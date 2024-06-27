package com.krushiSevaCenter.dao;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.krushiSevaCenter.entity.Product;

@Repository
public interface ProductDao extends CrudRepository<Product, Long> {

	@Override
	List<Product> findAll();
	
	Optional<Product> findById(Long productId);


	 @Query("SELECT p FROM Product p WHERE p.expiryDate BETWEEN :startDate AND :endDate")
	    List<Product> findProductsExpiringBetween(@Param("startDate") LocalDate startDate, @Param("endDate") LocalDate endDate);
	    
	    @Query("SELECT COUNT(p) FROM Product p WHERE p.expiryDate BETWEEN :startDate AND :endDate")
	    long countProductsExpiringBetween(@Param("startDate") LocalDate startDate, @Param("endDate") LocalDate endDate);
	    
	    

	    long countByOpeningStockLessThan(long openingStock);
	    List<Product> findByOpeningStockLessThan(long openingStock);
	    
	       
	    long countByExpiryDateBefore(LocalDate expiryDate);
	    List<Product> findByExpiryDateBefore(LocalDate expiryDate);


    @Query("SELECT p FROM Product p WHERE LOWER(p.productName) LIKE LOWER(CONCAT('%', :productName, '%'))")
    List<Product> findByProductNameContainingIgnoreCase(@Param("productName") String productName);


}
