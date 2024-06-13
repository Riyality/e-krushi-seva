package com.krushiSevaCenter.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.krushiSevaCenter.entity.Company;

public interface CompanyDao extends CrudRepository<Company, Integer>{
	@Override
	List<Company> findAll();

	
}
