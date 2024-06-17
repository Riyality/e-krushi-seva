package com.krushiSevaCenter.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krushiSevaCenter.dao.CustomerBillDao;
import com.krushiSevaCenter.dao.CustomerHistoryDao;
import com.krushiSevaCenter.dto.BillRequestDto;
import com.krushiSevaCenter.entity.CustomerBill;
import com.krushiSevaCenter.entity.CustomerHistory;

@Service
public class CustomerHistoryService {

    @Autowired
    private CustomerBillDao customerBillDao;

    @Autowired
    private CustomerHistoryDao customerHistoryDao;

   
    public void addBill(BillRequestDto dto) {

        CustomerBill customerBill = dto.getCustomerBill(); 
        CustomerBill addedBill = customerBillDao.save(customerBill);

        List<CustomerHistory> customerHistoryList = dto.getCustomerHistory();
        for (CustomerHistory history : customerHistoryList) {
           history.setBillId(addedBill);
        }
        customerHistoryDao.saveAll(customerHistoryList);	
    }


}
