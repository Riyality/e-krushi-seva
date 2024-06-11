package com.krushiSevaCenter.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krushiSevaCenter.dao.ManuFactureDao;
import com.krushiSevaCenter.entity.ManuFacture;

@Service
public class ManuFactureService {

	@Autowired
	private ManuFactureDao dao;
	
	public ManuFacture addmanufacture(ManuFacture m) {
		try { 
			ManuFacture entity=	dao.save(m);
		return entity;
		
	}catch (Exception e) {
		e.printStackTrace();
	return null;
	}

	
}
}
