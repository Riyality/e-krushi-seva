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
    public boolean addSupplier(Supplier supplier) {
        try {
            supplierRepository.save(supplier);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
    public List<Supplier> getAllSuppliers() {
        return supplierRepository.findAll();
    }
    public boolean deleteSupplier(long id) {
        try {
        	supplierRepository.deleteById(id);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public Supplier getSupplierById(long id) {
        return supplierRepository.findById(id).orElse(null);
    }

    public boolean updateSupplier(Supplier supplier) {
        try {
        	supplierRepository.save(supplier);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

}
