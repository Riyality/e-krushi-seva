package com.krushiSevaCenter.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.krushiSevaCenter.dto.SupplierRequestDto;
import com.krushiSevaCenter.entity.Supplier;
import com.krushiSevaCenter.service.SupplierHistoryService;
import com.krushiSevaCenter.service.SupplierService;

@Controller
@RequestMapping("/suppliers")
public class SupplierController {

    @Autowired
    private SupplierService supplierService;
    
    @Autowired
    private SupplierHistoryService supplierHistoryService;

    @GetMapping("/search")
    public ResponseEntity<List<Supplier>> searchSuppliers(@RequestParam String name) {
        List<Supplier> suppliers = supplierService.searchSuppliers(name);
        return ResponseEntity.ok(suppliers);
    }
    
    @PostMapping("/add")
    public ResponseEntity<String> addSupplierBill(@RequestBody SupplierRequestDto dto) {
        supplierHistoryService.addBill(dto);
        return ResponseEntity.status(HttpStatus.CREATED).body("Record added successfully");
    }
    
    @GetMapping("/addSupplierForm")
    public String addCompanyForm() {
        return "supplier/add";
    }
    @RequestMapping(method = RequestMethod.POST)
    public String addSupplier(@ModelAttribute Supplier supplier, Model model) {
        boolean isAdded = supplierService.addSupplier(supplier);
        if (isAdded) {
            model.addAttribute("msg", "Supplier Added successfully");
            return "supplier/result";
        } else {
            model.addAttribute("errorMsg", "Unable to Add Supplier");
            return "supplier/error";
        }
    }
    @RequestMapping("/all")
    public String getAllSuppliers(Model model) {
        List<Supplier> supplierList = supplierService.getAllSuppliers();
        model.addAttribute("supplierList", supplierList);
        return "supplier/all";
    }
    
    @GetMapping("/delete-supplier")
    public String deleteSupplier(@RequestParam int id, Model model) {
        boolean isDeleted = supplierService.deleteSupplier(id);
        if (isDeleted) {
            model.addAttribute("msg", "Supplier deleted successfully");
            return "supplier/result";
        } else {
            model.addAttribute("errorMsg", "Unable to delete supplier");
            return "supplier/error";
        }
    }

    @GetMapping("/select-supplier")
    public String getSupplierById(@RequestParam int id, Model model) {
        Supplier supplier = supplierService.getSupplierById(id);
        if (supplier != null) {
            model.addAttribute("supplier", supplier);
            return "supplier/update";
        } else {
            model.addAttribute("msg", "Supplier not found");
            return "supplier/update";
        }
    }

    @PostMapping("/update")
    public String updateSupplier(@ModelAttribute Supplier supplier, Model model) {
        boolean isUpdated = supplierService.updateSupplier(supplier);
        if (isUpdated) {
            model.addAttribute("msg", "Supplier updated successfully!");
            return "supplier/result";
        } else {
            model.addAttribute("errorMsg", "Supplier update failed!");
            return "supplier/error";
        }
    }



}
