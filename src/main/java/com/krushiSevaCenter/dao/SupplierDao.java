package com.krushiSevaCenter.dao;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import com.krushiSevaCenter.entity.Supplier;

public interface SupplierDao extends CrudRepository<Supplier, Long> {
    @Override
    List<Supplier> findAll();
    
    List<Supplier> findByNameContainingIgnoreCase(String name);
}
