package com.krushiSevaCenter.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.krushiSevaCenter.dto.BillRequestDto;
import com.krushiSevaCenter.service.CustomerHistoryService;

@Controller
@RequestMapping("/customer")
public class CustomerHistoryController {

	@Autowired
	private CustomerHistoryService   service;
	
	@PostMapping
	public ResponseEntity<String> addCustomerHistory( @RequestBody BillRequestDto dto ) {
		service.addBill( dto );
		return ResponseEntity.status( HttpStatus.CREATED ).body( "record added successfully" );
	}

}


