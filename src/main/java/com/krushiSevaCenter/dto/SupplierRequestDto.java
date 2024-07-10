package com.krushiSevaCenter.dto;

import java.util.List;

import com.krushiSevaCenter.entity.PurchaseBill;
import com.krushiSevaCenter.entity.SupplierHistory;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class SupplierRequestDto {

    private PurchaseBill purchaseBill;

    private List<SupplierHistory> supplierHistory;
}
