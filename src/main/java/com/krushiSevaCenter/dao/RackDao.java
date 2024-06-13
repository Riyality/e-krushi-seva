package com.krushiSevaCenter.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.krushiSevaCenter.entity.Rack;

public interface RackDao extends CrudRepository<Rack, Integer> {

	@Override
	List<Rack> findAll();
}
