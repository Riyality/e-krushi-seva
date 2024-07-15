package com.krushiSevaCenter.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.krushiSevaCenter.entity.PurchaseBillHistory;

public interface PurchaseBorrowingDao extends CrudRepository<PurchaseBillHistory, Long>{

	List<PurchaseBillHistory> findByPurchaseId_Id(Long purchaseId );

}
