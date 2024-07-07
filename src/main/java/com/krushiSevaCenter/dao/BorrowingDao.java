package com.krushiSevaCenter.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.krushiSevaCenter.entity.BillHistory;

@Repository
public interface BorrowingDao extends JpaRepository<BillHistory, Long> {
}
