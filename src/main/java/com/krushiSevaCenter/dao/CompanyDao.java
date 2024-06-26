package com.krushiSevaCenter.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.krushiSevaCenter.entity.Company;

@Repository
public interface CompanyDao extends CrudRepository<Company, Integer>{
	@Override
	List<Company> findAll();

	
}
