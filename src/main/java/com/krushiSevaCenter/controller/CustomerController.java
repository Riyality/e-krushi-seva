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

import com.krushiSevaCenter.entity.customer;
import com.krushiSevaCenter.service.CustomerService;

@Controller
@RequestMapping("/customers")
public class CustomerController {

	@Autowired
	private CustomerService service;

	@GetMapping("/addCustomerForm")
	public String addCustomerForm() {
		return "customer/add";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String addCustomer(@ModelAttribute customer customer, Model model) {
		boolean isAdded = service.addCustomer(customer);
		if (isAdded) {
			model.addAttribute("msg", "Customer Added successfully");
			return "customer/result";
		} else {
			model.addAttribute("errorMsg", "Unable to Add Customer");
			return "customer/error";

		}
	}

	@RequestMapping("/all")
	public String alldata(Model model) {
		List<customer> customerList = service.getAllCustomers();
		model.addAttribute("customerList", customerList);
		return "customer/all";
	}
	
	@RequestMapping("/delete-customer")
	public String delete(@RequestParam int Customer_ID, Model model) {

		boolean isDeleted = service.delete(Customer_ID);
		if (isDeleted) {
			model.addAttribute("msg", "Customer deleted  successfully");
			return "customer/result";
		} else {
			model.addAttribute("errorMsg", "Unable to delete Customer");
			return "customer/error";
		}
	}

	@RequestMapping("/select-customer")
	public String getCustomerById(@RequestParam int Customer_ID, Model model) {
		customer customer = service.getById(Customer_ID);

		if (customer != null) {
			model.addAttribute("customer", customer);
			return "customer/update";
		} else {
			model.addAttribute("msg", "customer not found");
			return "customer/update";
		}
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updateCustomer(@ModelAttribute customer customer, Model model) {
		boolean isUpdated = service.updateCustomer(customer);

		if (isUpdated) {
			model.addAttribute("msg", "customer updated successfully!");
			return "customer/result";
		} else {
			model.addAttribute("errorMsg", "customer update failed!");
		}

		return "redirect:/all";
	}
	@RequestMapping("/details")
	public String getDetails(@RequestParam int Customer_ID, Model model) {
		customer customer = service.getDetails(Customer_ID);

	    if (customer != null) {
	        model.addAttribute("customer", customer);
	        return "customer/details"; 
	    } else {
	        model.addAttribute("msg", "customer not found");
	        return "customer/update"; 
	    }
	}
}
