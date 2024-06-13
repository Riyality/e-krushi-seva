package com.krushiSevaCenter.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	
	@GetMapping( "/" )
	public String loginPage() {
		return "login/login";
	}
	
	@GetMapping( "/home" )
	public String dashboard() {
		return "index";
	}
	

}


	

