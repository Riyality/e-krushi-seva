package com.krushiSevaCenter.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.krushiSevaCenter.entity.ManuFacture;
import com.krushiSevaCenter.service.ManuFactureService;

@Controller
@RequestMapping("/manufacture")
public class ManuFactureController {

	@Autowired
	private ManuFactureService service;

	@ResponseBody
	@RequestMapping(method = RequestMethod.POST)
	public ManuFacture ManuFacture(@ModelAttribute ManuFacture m, Model model) {
		ManuFacture addedManuFacture = service.addmanufacture(m);
		return addedManuFacture;
	}
}
