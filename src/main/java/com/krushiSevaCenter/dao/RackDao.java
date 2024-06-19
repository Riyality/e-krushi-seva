package com.krushiSevaCenter.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.krushiSevaCenter.entity.Rack;

@Repository
public interface RackDao extends CrudRepository<Rack, Integer> {

	@Override
	List<Rack> findAll();
}
