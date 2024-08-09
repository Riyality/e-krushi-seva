package com.krushiSevaCenter.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.krushiSevaCenter.entity.Product;
import com.krushiSevaCenter.service.ProductQuantityService;
import com.krushiSevaCenter.service.ProductService;

@Controller
@RequestMapping("/products")
public class ProductController {

	@Autowired
	private ProductService productService;
	
	   @Autowired
	    private ProductQuantityService productQuantityService;



	@PostMapping
	public String addProduct(@ModelAttribute Product p, Model model) {
		boolean isAdded = productService.addProduct(p);
		if (isAdded) {
			model.addAttribute("msg", "Product Added successfully");
			return "products/result";
		} else {
			model.addAttribute("errorMsg", "Unable to Add Product");
			return "products/error";

		}

	}



@RequestMapping("/allProd")
public String alldata(Model model) {
    List<Product> productList = productService.getAllProducts();
    model.addAttribute("itemList", productList);
    return "products/all";
}




	@RequestMapping("/delete")
	public String delete(@RequestParam long id, Model model) {

		boolean isDeleted = productService.delete(id);
		if (isDeleted) {
			model.addAttribute("msg", "Product deleted  successfully");
			return "products/result";
		} else {
			model.addAttribute("errorMsg", "Unable to delete Product");
			return "products/error";
		}
	}


	@RequestMapping("/select-for-add-stock")
	public String getProductByIdForAddStock(@RequestParam int id, Model model) {
		Product product = productService.getById(id);
		if (product != null) {
			model.addAttribute("product", product);
			return "products/updateStock";
		} else {
			model.addAttribute("msg", "ProductStock not found");
			return "products/error";
		}
	}

	
@RequestMapping("/select")
public String getProductById(@RequestParam long id, Model model) {
    Product product = productService.getById(id);
    
    if (product != null) {
        model.addAttribute("product", product);
        return "products/update"; 
    } else {
        model.addAttribute("msg", "Product not found");
        return "products/error"; 
    }
}


	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updateProduct(@ModelAttribute Product product, Model model) {
		boolean isUpdated = productService.updateProduct(product);

    if (isUpdated) {
        model.addAttribute("msg", "Product updated successfully!");
        return "products/result";
    } else {
        model.addAttribute("errorMsg", "Product update failed!");
    }
    
    return "products/error";
}


@RequestMapping("/details")
public String getDetails(@RequestParam long id, Model model) {
    Product product = productService.getDetails(id);
    
    if (product != null) {
        model.addAttribute("product", product);
        return "products/details"; 
    } else {
        model.addAttribute("msg", "Product not found");
        return "products/error"; 
    }

}


	@RequestMapping(value = "/updateStock", method = RequestMethod.POST)
	public String updateStock(@ModelAttribute Product product, Model model) {
		boolean isUpdated = productService.updateStock(product);

		if (isUpdated) {
			model.addAttribute("msg", "Stock updated successfully!");
			return "products/result";
		} else {
			model.addAttribute("errorMsg", "Stock update failed!");
		}

		return "products/error";
	}



	@GetMapping("/search")
	public ResponseEntity<List<Product>> searchProductsByName(@RequestParam String productName) {
		List<Product> products = productService.searchProductsByName(productName);
		return ResponseEntity.ok(products);
	}
	
	
	 @GetMapping("/checkAvailability")
	    public ResponseEntity<Boolean> checkProductAvailability( @RequestParam long productId, @RequestParam long requiredQuantity) {
	        boolean isAvailable = productQuantityService.checkProductAvailability(productId, requiredQuantity);
	        return ResponseEntity.ok(isAvailable);
	    }
	}
