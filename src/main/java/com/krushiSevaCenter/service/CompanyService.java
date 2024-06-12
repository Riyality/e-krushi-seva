package com.krushiSevaCenter.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krushiSevaCenter.dao.CompanyDao;
import com.krushiSevaCenter.entity.Company;
import com.krushiSevaCenter.entity.customer;

@Service
public class CompanyService {

	@Autowired
	private CompanyDao companyDao;

	public boolean addCompany(Company company) {
		try {
			companyDao.save(company);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public List<Company> getAllCompanies() {
		return companyDao.findAll();
	}

	public boolean delete(int id) {
		try {
			companyDao.deleteById(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public Company getById(int id) {
		Optional<Company> company = companyDao.findById(id);
		return company.orElse(null);
	}

	public boolean updateCompany(Company company) {
		if (company != null) {
			companyDao.save(company);
			return true;
		} else {
			return false;
		}
	}

	public Company getDetails(int id) {
		Optional<Company> company = companyDao.findById(id);
		return company.orElse(null);
	}
}
