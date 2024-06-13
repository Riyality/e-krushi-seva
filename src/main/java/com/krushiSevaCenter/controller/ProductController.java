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

import com.krushiSevaCenter.entity.Product;
import com.krushiSevaCenter.service.ProductService;

@Controller
@RequestMapping("/products")
public class ProductController {

	@Autowired
	private ProductService service;
	
//
//	@GetMapping( "/addProductForm" )
//	public String addCustomerForm() {
//		return "products/add";
//	}

	

@RequestMapping(method=RequestMethod.POST ) 
public String addProduct( @ModelAttribute Product p,  Model model  ) { 
	boolean isAdded = service.addProduct(p);
	if ( isAdded ) {
		model.addAttribute( "msg", "Product Added successfully" );
		return "result";
	} else {
		model.addAttribute( "errorMsg", "Unable to Add Product" );
		return "error";	
		
	}

}	

@RequestMapping("/allProd")
public String alldata(Model model) {
    List<Product> productList = service.getAllProducts();
    model.addAttribute("itemList", productList);
    return "products/all";
}


@RequestMapping("/delete") 
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

@RequestMapping("/select")
public String getProductById(@RequestParam int id, Model model) {
    Product product = service.getById(id);
    
    if (product != null) {
        model.addAttribute("product", product);
        return "products/update"; 
    } else {
        model.addAttribute("msg", "Product not found");
        return "error"; 
    }
}

@RequestMapping(value = "/update", method = RequestMethod.POST)
public String updateProduct(@ModelAttribute Product product, Model model) {
    boolean isUpdated = service.updateProduct(product);
    
    if (isUpdated) {
        model.addAttribute("msg", "Product updated successfully!");
        return "result";
    } else {
        model.addAttribute("errorMsg", "Product update failed!");
    }
    
    return "error";
}


@RequestMapping("/details")
public String getDetails(@RequestParam int id, Model model) {
    Product product = service.getDetails(id);
    
    if (product != null) {
        model.addAttribute("product", product);
        return "products/details"; 
    } else {
        model.addAttribute("msg", "Product not found");
        return "error"; 
    }
}
}


	

