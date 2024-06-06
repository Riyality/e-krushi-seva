package com.krushiSevaCenter.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.krushiSevaCenter.entity.ProductEntity;
import com.krushiSevaCenter.service.ProductService;

@Controller
public class HomeController {

	@Autowired
	private ProductService service;
	
	@GetMapping( "/" )
	public String loginPage() {
		return "login/login";
	}
	
	@GetMapping( "/home" )
	public String dashboard() {
		return "index";
	}
	

	
	@GetMapping( "/addProductForm" )
	public String addCustomerForm() {
		return "addProduct";
	}
	
//	@GetMapping( "/Form" )
//	public String allForm() {
//		return "allProduct";
//	}
	

@RequestMapping(value ="/addProduct",method =RequestMethod.POST ) 
public String addProduct( @ModelAttribute ProductEntity p,  Model model  ) { 
	boolean isAdded = service.addProduct(p);
	if ( isAdded ) {
		model.addAttribute( "msg", "Product Added successfully" );
		return "addProduct";
	} else {
		model.addAttribute( "errorMsg", "Unable to Add Product" );
		return "addProduct";	
		
	}

}	

@RequestMapping("/allProd")
public String alldata(Model model) {
    List<ProductEntity> productList = service.getAllProducts();
    model.addAttribute("itemList", productList);
    return "allProduct";
}


@RequestMapping("/delete-product") 
public String delete(@RequestParam int id ,Model model) {
	
	boolean isDeleted =service.delete(id);
	if ( isDeleted ) {
		model.addAttribute( "msg", "Product deleted  successfully" );
		return "result";
	} else {
		model.addAttribute( "errorMsg", "Unable to delete Product" );
		return "result";
	}
}

@RequestMapping("/select-product")
public String getDoctorById(@RequestParam int id, Model model) {
    ProductEntity product = service.getById(id);
    
    if (product != null) {
        model.addAttribute("product", product);
        return "updateProduct"; 
    } else {
        model.addAttribute("msg", "Product not found");
        return "updateProduct"; 
    }
}

@RequestMapping(value = "/updateProduct", method = RequestMethod.POST)
public String updateProduct(@ModelAttribute ProductEntity product, Model model) {
    boolean isUpdated = service.updateProduct(product);
    
    if (isUpdated) {
        model.addAttribute("msg", "Product updated successfully!");
        return "result";
    } else {
        model.addAttribute("errorMsg", "Product update failed!");
    }
    
    return "redirect:/allProd";
}
}


	

