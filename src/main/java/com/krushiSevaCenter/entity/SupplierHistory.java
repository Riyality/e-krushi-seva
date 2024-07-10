package com.krushiSevaCenter.entity;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "supplierhistory")
public class SupplierHistory {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private long id;
	
	@Column(name = "supplier_id")
	private long supplierId;
	
	@Column(name = "product_id")
	private long productId;
	
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "order_date")
	private LocalDate date;
	

	@Column(name = "amount")
	private double amount;
	
	
	@Column(name = "quantity")
    private long quantity;
    

	 @ManyToOne
	 @JoinColumn(name = "purchase_id") 
	 private PurchaseBill purchaseId;
}
