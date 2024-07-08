package com.krushiSevaCenter.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.krushiSevaCenter.entity.BillHistory;

@Repository
public interface BorrowingDao extends JpaRepository<BillHistory, Long> {

	List<BillHistory> findByBillId_Id(Long billId);
}
