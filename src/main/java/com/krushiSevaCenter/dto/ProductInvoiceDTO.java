package com.krushiSevaCenter.dto;

import java.time.LocalDate;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ProductInvoiceDTO {
    private long productId;
    private String productName;
    private long quantity;
    private LocalDate latestDate; // Renamed to reflect the purpose
}
