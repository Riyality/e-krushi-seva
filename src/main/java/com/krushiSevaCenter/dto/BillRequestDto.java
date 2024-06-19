package com.krushiSevaCenter.dto;

import java.util.List;

import javax.persistence.Entity;

import com.krushiSevaCenter.entity.CustomerBill;
import com.krushiSevaCenter.entity.CustomerHistory;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class BillRequestDto {

	private CustomerBill customerBill;
	private List<CustomerHistory> customerHistory;
	
}
