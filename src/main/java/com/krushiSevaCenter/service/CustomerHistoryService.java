package com.krushiSevaCenter.service;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import javax.persistence.EntityNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.krushiSevaCenter.dao.CustomerBillDao;
import com.krushiSevaCenter.dao.CustomerHistoryDao;
import com.krushiSevaCenter.dao.ProductDao;
import com.krushiSevaCenter.dto.BillRequestDto;
import com.krushiSevaCenter.dto.ProductInvoiceDTO;
import com.krushiSevaCenter.dto.ReturnPolicyDto;
import com.krushiSevaCenter.entity.CustomerBill;
import com.krushiSevaCenter.entity.CustomerHistory;
import com.krushiSevaCenter.entity.Product;

@Service
@Transactional
public class CustomerHistoryService {

    @Autowired
    private CustomerBillDao customerBillDao;

    @Autowired
    private CustomerHistoryDao customerHistoryDao;
    
    @Autowired
    private ProductDao productDao;

    
    
    public void addBill(BillRequestDto dto) {
        CustomerBill customerBill = dto.getCustomerBill();
        if (customerBill == null) {
            throw new IllegalArgumentException("CustomerBill cannot be null");
        }

        CustomerBill addedBill = customerBillDao.save(customerBill);

        List<CustomerHistory> customerHistoryList = dto.getCustomerHistory();
        for (CustomerHistory history : customerHistoryList) {
            history.setBillId(addedBill);
        }
        customerHistoryDao.saveAll(customerHistoryList);

        for (CustomerHistory history : customerHistoryList) {
            Long productId = history.getProductId();
            Optional<Product> optionalProduct = productDao.findById(productId);

            if (optionalProduct.isPresent()) {
                Product product = optionalProduct.get();
                long newStock = product.getOpeningStock() - history.getQuantity();
                product.setOpeningStock(newStock);
                productDao.save(product);
            }
        }
    }


    public Product productReturn(ReturnPolicyDto dto) {
        Long productId = dto.getProductId();
        Optional<Product> optionalProduct = productDao.findById(productId);

        if (optionalProduct.isPresent()) {
            Product product = optionalProduct.get();
            long newStock = product.getOpeningStock() + dto.getQuantity();
            product.setOpeningStock(newStock);
            return productDao.save(product);
        }
        return null; 
    }


    public Product productReturntoSupplier(ReturnPolicyDto dto) {
        Long productId = dto.getProductId();
        Optional<Product> optionalProduct = productDao.findById(productId);

        if (optionalProduct.isPresent()) {
            Product product = optionalProduct.get();
            long newStock = product.getOpeningStock() - dto.getQuantity();
            
          
            if (newStock < 0) {
                throw new IllegalArgumentException("Returned quantity exceeds current stock");
            }

            product.setOpeningStock(newStock);
            return productDao.save(product);
        } else {
            throw new EntityNotFoundException("Product not found with ID: " + productId);
        }
    }
    

    
    public List<ProductInvoiceDTO> findInvoicesByDateRange(LocalDate fromDate, LocalDate toDate) {
        return customerHistoryDao.findInvoicesByDateRange(fromDate, toDate);
    }
	

}
    
    
    
   

