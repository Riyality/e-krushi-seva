package com.krushiSevaCenter.dto;

import java.util.List;

import com.krushiSevaCenter.entity.CustomerBill;
import com.krushiSevaCenter.entity.customer;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class BorrowRequestDto {
     
	private CustomerBill customerBill;
	
	private List<customer> customer;
}
