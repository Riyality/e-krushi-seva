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
import com.krushiSevaCenter.service.CompanyService;

@Controller
@RequestMapping("/companies")
public class CompanyController {

    @Autowired
    private CompanyService service;

    @GetMapping("/addCompanyForm")
    public String addCompanyForm() {
        return "company/add";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String addCompany(@ModelAttribute Company company, Model model) {
        boolean isAdded = service.addCompany(company);
        if (isAdded) {
            model.addAttribute("msg", "Company Added successfully");
            return "company/result";
        } else {
            model.addAttribute("errorMsg", "Unable to Add Company");
            return "company/error";
        }
    }

    @RequestMapping("/all")
    public String allData(Model model) {
        List<Company> companyList = service.getAllCompanies();
        model.addAttribute("companyList", companyList);
        return "company/all";
    }

    @RequestMapping("/delete-company")
    public String delete(@RequestParam int id, Model model) {
        boolean isDeleted = service.delete(id);
        if (isDeleted) {
            model.addAttribute("msg", "Company deleted successfully");
            return "company/result";
        } else {
            model.addAttribute("errorMsg", "Unable to delete Company");
            return "company/error";
        }
    }

    @RequestMapping("/select-company")
    public String getCompanyById(@RequestParam int id, Model model) {
        Company company = service.getById(id);
        if (company != null) {
            model.addAttribute("company", company);
            return "company/update";
        } else {
            model.addAttribute("msg", "Company not found");
            return "company/update";
        }
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String updateCompany(@ModelAttribute Company company, Model model) {
        boolean isUpdated = service.updateCompany(company);
        if (isUpdated) {
            model.addAttribute("msg", "Company updated successfully!");
            return "company/result";
        } else {
            model.addAttribute("errorMsg", "Company update failed!");
        }
        return "redirect:/companies/all";
    }

    @RequestMapping("/details")
    public String getDetails(@RequestParam int id, Model model) {
        Company company = service.getDetails(id);
        if (company != null) {
            model.addAttribute("company", company);
            return "company/details";
        } else {
            model.addAttribute("msg", "Company not found");
            return "company/update";
        }
    }
}
