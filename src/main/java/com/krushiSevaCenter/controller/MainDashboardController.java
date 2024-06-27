package com.krushiSevaCenter.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.krushiSevaCenter.entity.CustomerBill;
import com.krushiSevaCenter.entity.Product;
import com.krushiSevaCenter.service.MainDashboardService;

@Controller
public class MainDashboardController {

	    @Autowired
	    private MainDashboardService service;
        

	    @GetMapping("/home")
	    public String getExpiringProductsData(Model model) {
	        long count = service.countProductsExpiringInCurrentMonth();
	        List<Product> expiringProducts = service.findProductsExpiringInCurrentMonth();
	        
	        long countLowStockProducts = service.countProductsOpeningStockLessThan(2);
        List<Product> lowStockProducts = service.findProductsOpeningStockLessThan(2);
        
        
        long countExpiredProducts = service.countExpiredProducts();
        List<Product> expiredProducts = service.findExpiredProducts();

        
       
        long countCustomersPaidToday = service.countCustomersPaidToday();
        List<CustomerBill> customersPaidToday = service.findCustomersPaidToday();
        
        long countBillsWithRemainingAmount = service.countBillsWithRemainingAmount();
        List<CustomerBill> billsWithRemainingAmount = service.findBillsWithRemainingAmount();

        
	        model.addAttribute("count", count);
	        model.addAttribute("expiringProducts", expiringProducts);
	        
	        model.addAttribute("countStockLessThanTwo", countLowStockProducts);
	        model.addAttribute("productsWithStockLessThanTwo", lowStockProducts);
	        
	        
	        model.addAttribute("countExpiredProducts", countExpiredProducts);
	        model.addAttribute("expiredProducts", expiredProducts);

	        model.addAttribute("countCustomersPaidToday", countCustomersPaidToday);
	        model.addAttribute("customersPaidToday", customersPaidToday);


	        model.addAttribute("countBillsWithRemainingAmount", countBillsWithRemainingAmount);
	        model.addAttribute("billsWithRemainingAmount", billsWithRemainingAmount);

	        
	        return "mainDashboard/index";
	    }
	
	    
	    
	}


