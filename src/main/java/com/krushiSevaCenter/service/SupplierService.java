package com.krushiSevaCenter.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.krushiSevaCenter.dao.SupplierDao;
import com.krushiSevaCenter.entity.Supplier;

@Service
public class SupplierService {

    @Autowired
    private SupplierDao supplierRepository;

    public List<Supplier> searchSuppliers(String name) {
        return supplierRepository.findByNameContainingIgnoreCase(name);
    }
}
