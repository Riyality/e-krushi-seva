package com.krushiSevaCenter.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krushiSevaCenter.dao.RackDao;
import com.krushiSevaCenter.entity.Rack;

@Service
public class RackService {

	@Autowired
	private RackDao dao;
	

    public List<Rack> getAllRack() {
        return dao.findAll();
    }

	
}
