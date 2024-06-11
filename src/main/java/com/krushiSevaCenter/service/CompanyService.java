package com.krushiSevaCenter.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krushiSevaCenter.dao.CompanyDao;
import com.krushiSevaCenter.entity.Company;

@Service
public class CompanyService {
	@Autowired
	private CompanyDao companydao;

	public boolean addCompany(Company c) {
		try {
			companydao.save(c);
			return true;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

	public List<Company> getAllCompany() {
		return (List<Company>) companydao.findAll();
	}

	
	public boolean delete(int id) {
		try {
			companydao.deleteById(id);
			return true;

		} catch (Exception e) {
			e.printStackTrace();

			return false;
		}
	}

	public Company getById(int id) {
		Optional<Company> company = companydao.getById(id);
		return company.orElse(null);
	}

	

	public boolean updateCompany(Company company) {

		if (company != null) {
			companydao.save(company);
			return true;
		} else {
			return false;
		}
	}
		

	public Company getDetails(int id) {
		Optional<Company> company = companydao.findById(id);
		return company.orElse(null);
		
	}
}
	