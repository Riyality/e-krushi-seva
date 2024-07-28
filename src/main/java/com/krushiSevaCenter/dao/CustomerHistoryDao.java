package com.krushiSevaCenter.dao;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.krushiSevaCenter.dto.ProductInvoiceDTO;
import com.krushiSevaCenter.entity.CustomerBill;
import com.krushiSevaCenter.entity.CustomerHistory;

@Repository
public interface CustomerHistoryDao  extends CrudRepository<CustomerHistory, Long>{

	@Override
	List<CustomerHistory> findAll();

	void save(CustomerBill customerBill);

   /* @Query("SELECT new com.krushiSevaCenter.dto.ProductInvoiceDTO(ch.productId, p.productName, SUM(ch.quantity), ch.date) " +
            "FROM CustomerHistory ch " +
            "JOIN Product p ON ch.productId = p.id " +
            "WHERE ch.date BETWEEN :fromDate AND :toDate " +
            "GROUP BY ch.productId, p.productName, ch.date")
     List<ProductInvoiceDTO> findInvoicesByDateRange(@Param("fromDate") LocalDate fromDate, @Param("toDate") LocalDate toDate);
*/
	
	@Query("SELECT new com.krushiSevaCenter.dto.ProductInvoiceDTO(ch.productId, p.productName, SUM(ch.quantity), MAX(ch.date)) " +
		       "FROM CustomerHistory ch " +
		       "JOIN Product p ON ch.productId = p.id " +
		       "WHERE ch.date BETWEEN :fromDate AND :toDate " +
		       "GROUP BY ch.productId, p.productName")
		List<ProductInvoiceDTO> findInvoicesByDateRange(@Param("fromDate") LocalDate fromDate, @Param("toDate") LocalDate toDate);

	List<CustomerHistory> findByBillId(CustomerBill bill);

	
}



