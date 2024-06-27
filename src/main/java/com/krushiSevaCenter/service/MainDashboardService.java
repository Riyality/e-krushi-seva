package com.krushiSevaCenter.service;

import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krushiSevaCenter.dao.CustomerBillDao;
import com.krushiSevaCenter.dao.ProductDao;
import com.krushiSevaCenter.entity.CustomerBill;
import com.krushiSevaCenter.entity.Product;

@Service
public class MainDashboardService {

    @Autowired
    private ProductDao productDao; 
    
    
    @Autowired
    private CustomerBillDao customerBillDao;

    public long countProductsExpiringInCurrentMonth() {
        LocalDate now = LocalDate.now();
        LocalDate startOfMonth = now.withDayOfMonth(1);
        LocalDate endOfMonth = now.withDayOfMonth(now.lengthOfMonth());
        return productDao.countProductsExpiringBetween(startOfMonth, endOfMonth);
    }

    public List<Product> findProductsExpiringInCurrentMonth() {
        LocalDate now = LocalDate.now();
        LocalDate startOfMonth = now.withDayOfMonth(1);
        LocalDate endOfMonth = now.withDayOfMonth(now.lengthOfMonth());
        return productDao.findProductsExpiringBetween(startOfMonth, endOfMonth);
    }

    public long countProductsOpeningStockLessThan(long openingStock) {
        return productDao.countByOpeningStockLessThan(openingStock);
    }

    public List<Product> findProductsOpeningStockLessThan(long openingStock) {
        return productDao.findByOpeningStockLessThan(openingStock);
    }

  
    public long countExpiredProducts() {
        LocalDate currentDate = LocalDate.now();
        return productDao.countByExpiryDateBefore(currentDate);
    }

    
    public List<Product> findExpiredProducts() {
        LocalDate currentDate = LocalDate.now();
        return productDao.findByExpiryDateBefore(currentDate);
    }
    
   
    
    public long countCustomersPaidToday() {
        LocalDate today = LocalDate.now();
        return customerBillDao.countByNextPaymentStatus(today);
    }
    public List<CustomerBill> findCustomersPaidToday() {
        LocalDate today = LocalDate.now();
        List<CustomerBill> bills = customerBillDao.findByNextPaymentStatus(today);
        return bills;
    }

    
  
    public long countBillsWithRemainingAmount() {
        return customerBillDao.countByRemainingAmountGreaterThan(0.0);
    }

   
    public List<CustomerBill> findBillsWithRemainingAmount() {
        return customerBillDao.findByRemainingAmountGreaterThan(0.0);
    }

    
   
}
