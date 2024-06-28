package com.krushiSevaCenter.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.krushiSevaCenter.dto.BillRequestDto;
import com.krushiSevaCenter.dto.ReturnPolicyDto;
import com.krushiSevaCenter.entity.Product;
import com.krushiSevaCenter.service.CustomerHistoryService;
import com.krushiSevaCenter.service.ProductService;

@Controller
@RequestMapping("/customer")
public class CustomerHistoryController {

	@Autowired
	private CustomerHistoryService   service;
	
	@Autowired
	private ProductService   proservice;
	
	
	

@PostMapping("/addBill")
public ResponseEntity<String> addCustomerHistory(@RequestBody BillRequestDto dto) {
   
    service.addBill(dto);
    return ResponseEntity.status(HttpStatus.CREATED).body("record added successfully");
}



	 @GetMapping("/returnpolicy")
	    public String showReturnForm(Model model) {
	        List<Product> products = proservice.getAllProducts();
	        model.addAttribute("productlist", products);
	        model.addAttribute("returnPolicyDto", new ReturnPolicyDto());
	        return "products/return";
	    }


    @PostMapping("/return")
    public String addProduct(@ModelAttribute ReturnPolicyDto dto, Model model) {
       
            Product returnedProduct = service.productReturn(dto);
            if (returnedProduct != null) {
                model.addAttribute("msg", "Product return successfully.");
                return "result";
            } else {
                model.addAttribute("errorMsg", "Product not found.");
                return "error";
            }
        } 
    }





