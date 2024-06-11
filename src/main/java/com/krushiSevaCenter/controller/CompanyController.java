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

import com.krushiSevaCenter.entity.Company;
import com.krushiSevaCenter.entity.ProductEntity;
import com.krushiSevaCenter.service.CompanyService;

@Controller
public class CompanyController {
	@Autowired
	private CompanyService companyservice;

	@GetMapping("/addCompanyForm")
	public String addCompanyForm() {
		return "addcompany";
	}

	@RequestMapping(value = "/add_company", method = RequestMethod.POST)
	public String addCompany(@ModelAttribute Company c, Model model) {
		boolean isAdded = companyservice.addCompany(c);
		if (isAdded) {
			model.addAttribute("msg", "company Added successfully");
			return "addcompany";
		} else {
			model.addAttribute("errorMsg", "Unable to Add company");
			return "addcompany";

		}

	}

	@RequestMapping("/all_Data")
	public String alldata(Model model) {
		List<Company> CompanyList = companyservice.getAllCompany();
		model.addAttribute("itemList", CompanyList);
		return "allData";
	}

	@RequestMapping("/delete-company")
	public String delete(@RequestParam int id, Model model) {

		boolean isDeleted = companyservice.delete(id);
		if (isDeleted) {
			model.addAttribute("msg", "company deleted  successfully");
			return "result";
		} else {
			model.addAttribute("errorMsg", "Unable to delete company");
			return "result";
		}
	}

	@RequestMapping("/select-company")
	public String getCompanyById(@RequestParam int id, Model model) {
		Company company = companyservice.getById(id);

		if (company != null) {
			model.addAttribute("company", company);
			return "updateCompany";
		} else {
			model.addAttribute("msg", "company not found");
			return "updateCompany";
		}
	}

	@RequestMapping(value = "/updateCompany", method = RequestMethod.POST)
	public String updateCompany(@ModelAttribute Company c, Model model) {
		boolean isUpdated = companyservice.updateCompany(c);

		if (isUpdated) {
			model.addAttribute("msg", "company updated successfully!");
			return "result";
		} else {
			model.addAttribute("errorMsg", "company update failed!");
		}

		return "redirect:/all_Data";
	}
	
	@RequestMapping("/details")
	public String getDetails(@RequestParam int id, Model model) {
		Company company = companyservice.getDetails(id);

	    if (company != null) {
	        model.addAttribute("company", company);
	        return "list"; 
	    } else {
	        model.addAttribute("msg", "company not found");
	        return "updateCompany";
	    }

}
}
