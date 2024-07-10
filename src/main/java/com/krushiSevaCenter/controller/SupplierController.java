package com.krushiSevaCenter.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
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
}
