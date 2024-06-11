package com.krushiSevaCenter.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.krushiSevaCenter.entity.ManuFacture;

@Repository
public interface ManuFactureDao  extends CrudRepository<ManuFacture, Integer>{

	@Override
	List<ManuFacture> findAll();
}
