package com.krushiSevaCenter.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.krushiSevaCenter.entity.ManuFacture;
import com.krushiSevaCenter.entity.Rack;
import com.krushiSevaCenter.service.ManuFactureService;
import com.krushiSevaCenter.service.RackService;

@Controller
public class RackController {

	@Autowired
	private RackService service;
	
	@Autowired
	private ManuFactureService  mfrService;
     
	@GetMapping( "/addProductForm" )
	public String addCustomerForm(Model model) {
		  List<Rack> rack = service.getAllRack();
		    model.addAttribute("racklist", rack);
		    
		    List<ManuFacture> shortNames = mfrService.getAllShortNames();
	        model.addAttribute("shortnames", shortNames);
		  
		   
		return "products/add";
	}

}
