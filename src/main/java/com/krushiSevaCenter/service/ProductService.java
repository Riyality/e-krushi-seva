package com.krushiSevaCenter.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krushiSevaCenter.dao.ProductDao;
import com.krushiSevaCenter.entity.ProductEntity;

@Service
public class ProductService {

	@Autowired
	private ProductDao dao;
	
	public boolean addProduct(ProductEntity p) {
		try { dao.save(p);
		return true;
		
	}catch (Exception e) {
		e.printStackTrace();
	return false;
	}

	
}

    public List<ProductEntity> getAllProducts() {
        return dao.findAll();
    }


	
	
	public boolean delete(int id) {
		try {
			dao.deleteById(id);
			return true;
			
		}catch (Exception e) {
			e.printStackTrace();
			
			return false;
		}
		
	}

	public ProductEntity getById(int id) {
		Optional<ProductEntity> product =dao.findById(id);
		return product.orElse(null);
	}

	
	public boolean updateProduct(ProductEntity product) {
	
		 if (product !=null) {
	            dao.save(product);
	            return true;
	        } else {
	            return false;
	        }
	    }
	}
