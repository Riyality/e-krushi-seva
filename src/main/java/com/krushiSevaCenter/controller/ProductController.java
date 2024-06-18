package com.krushiSevaCenter.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.krushiSevaCenter.entity.Product;
import com.krushiSevaCenter.service.ProductService;

@Controller
@RequestMapping("/products")
public class ProductController {

	@Autowired
	private ProductService productService;

	@GetMapping("/addProductForm")
	public String addCustomerForm() {
		return "products/add";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String addProduct(@ModelAttribute Product p, Model model) {
		boolean isAdded = productService.addProduct(p);
		if (isAdded) {
			model.addAttribute("msg", "Product Added successfully");
			return "result";
		} else {
			model.addAttribute("errorMsg", "Unable to Add Product");
			return "error";

		}

	}

	@RequestMapping("/allProd")
	public String alldata(Model model) {
		List<Product> productList = productService.getAllProducts();
		model.addAttribute("itemList", productList);
		return "products/all";
	}

	@RequestMapping("/delete")
	public String delete(@RequestParam int id, Model model) {

		boolean isDeleted = productService.delete(id);
		if (isDeleted) {
			model.addAttribute("msg", "Product deleted  successfully");
			return "result";
		} else {
			model.addAttribute("errorMsg", "Unable to delete Product");
			return "result";
		}
	}

	@RequestMapping("/select")
	public String getProductById(@RequestParam int id, Model model) {
		Product product = productService.getById(id);

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
		boolean isUpdated = productService.updateProduct(product);

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
		Product product = productService.getDetails(id);

		if (product != null) {
			model.addAttribute("product", product);
			return "products/details";
		} else {
			model.addAttribute("msg", "Product not found");
			return "error";
		}

	}

	@GetMapping("/search")
	public ResponseEntity<List<Product>> searchProductsByName(@RequestParam String productName) {
		List<Product> products = productService.searchProductsByName(productName);
		return ResponseEntity.ok(products);
	}

	/*
	 * @GetMapping("/{id}") public ResponseEntity<Product>
	 * getProductById(@PathVariable int id) { Product product =
	 * productService.getProductById(id); if (product != null) { return
	 * ResponseEntity.ok(product); } else { return
	 * ResponseEntity.notFound().build(); } }
	 */
}
