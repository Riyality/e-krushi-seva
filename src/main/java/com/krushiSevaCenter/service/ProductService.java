package com.krushiSevaCenter.service;

import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krushiSevaCenter.dao.ProductDao;
import com.krushiSevaCenter.entity.Product;

@Service
public class ProductService {

	@Autowired
	private ProductDao productDao;

	public boolean addProduct(Product p) {


		try {
			productDao.save(p);

			return true;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public List<Product> getAllProducts() {
		return productDao.findAll();
	}

	public boolean delete(long id) {
		try {
			productDao.deleteById(id);
			return true;

		} catch (Exception e) {
			e.printStackTrace();

			return false;
		}

	}

	public Product getDetails(long id) {
		Optional<Product> product =productDao.findById(id);

		return product.orElse(null);
	}

	public boolean updateProduct(Product product) {
		 if (product !=null) {
	            dao.save(product);
	            return true;
	        } else {
	            return false;
	        }
	    }
	
	public Product getById(long id) {
		Optional<Product> product =dao.findById(id);
		return product.orElse(null);
	}

	 public boolean updateStock(Product product) {
	        try {
	            long id = product.getId();
	            Optional<Product> optionalProduct = dao.findById(id);
	            
	            if (optionalProduct.isPresent()) {
	                Product existingProduct = optionalProduct.get();
	                long currentStock = existingProduct.getOpeningStock();
	                long newStock = product.getOpeningStock();
	                
	                if (newStock < 0) {
	                    throw new IllegalArgumentException("Stock cannot be negative");
	                }
	                
	                long updatedStockValue = currentStock + newStock;
	                existingProduct.setOpeningStock(updatedStockValue);
	                dao.save(existingProduct);
	                return true;
	            } else {
	                return false;
	            }
	        } catch (Exception e) {
	            e.printStackTrace(); 
	            return false;
	        }
	    }
	}
		if (product != null) {
			productDao.save(product);
			return true;
		} else {
			return false;
		}
	}

	public Product getById(int id) {
		Optional<Product> product = productDao.findById(id);
		return product.orElse(null);
	}

	public List<Product> searchProductsByName(String productName) {
		return productDao.findByProductNameContainingIgnoreCase(productName);
	}

	public Product getProductById(int id) {
		return productDao.findById(id).orElse(null);
	}

	
	public boolean updateStock(Product product) {
		try {
			int id = product.getId();
			Product existingObject = productDao.findById(id).get();
			int updatedStockValue = Integer.parseInt(existingObject.getOpeningStock())+Integer.parseInt(product.getOpeningStock());
			existingObject.setOpeningStock(updatedStockValue+ "");
			productDao.save(existingObject);
			return true;
		} catch (Exception e) {
			
		}
		return false;
	}

}
