package com.krushiSevaCenter.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PurchaseController {

	
	@GetMapping( "/purchasereceipt" )
	public String addReceiptForm() {
		return "supplier/receipt";
	}
}
