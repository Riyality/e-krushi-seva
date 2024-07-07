package com.krushiSevaCenter.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krushiSevaCenter.dao.ProductDao;
import com.krushiSevaCenter.entity.Product;

@Service
public class ProductQuantityService {

    @Autowired
    private ProductDao productRepository;
    

    public boolean checkProductAvailability(long productId, long requiredQuantity) {
        Product product = productRepository.findById(productId).orElse(null);
        if (product != null) {
        	return product.getOpeningStock() >= requiredQuantity;
        }
        return false;
    }
}