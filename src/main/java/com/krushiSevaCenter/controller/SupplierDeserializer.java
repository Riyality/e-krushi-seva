package com.krushiSevaCenter.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.krushiSevaCenter.dao.SupplierDao;
import com.krushiSevaCenter.entity.Supplier;

@Component
public class SupplierDeserializer extends JsonDeserializer<Supplier> {

    @Autowired
    private SupplierDao supplierDao; // Adjust this based on your DAO or repository setup

    @Override
    public Supplier deserialize(JsonParser p, DeserializationContext ctxt) throws IOException {
        String supplierId = p.getText();
        return supplierDao.findById(Long.parseLong(supplierId)).orElse(null);
    }
}
