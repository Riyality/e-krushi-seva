package com.krushiSevaCenter.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.krushiSevaCenter.dao.CustomerDao;
import com.krushiSevaCenter.entity.customer;

@Component
public class CustomerDeserializer extends JsonDeserializer<customer> {

    @Autowired
    private CustomerDao customerDao;

    @Override
    public customer deserialize(JsonParser p, DeserializationContext ctxt) throws IOException {
        String customerId = p.getText();
        return customerDao.findById(Integer.parseInt(customerId)).orElse(null);
    }
}