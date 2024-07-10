package com.krushiSevaCenter.entity;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.krushiSevaCenter.controller.CustomerDeserializer;
import com.krushiSevaCenter.controller.SupplierDeserializer;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "purchasebill")
public class PurchaseBill {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private long id;

    @ManyToOne
    @JoinColumn(name = "supplier_id")
    @JsonDeserialize(using = SupplierDeserializer.class)
    private Supplier supplierId;

	
	@Column(name = "order_number")
	private long orderNumber;
	
	
	@Column(name = "amount")
	private double amount;

	@Column(name = "paid_amount")
	private double paidAmount;

	@Column(name = "remaining_amount")
	private double remainingAmount;

	@Column(name = "online_payment")
	private double onlinePayment;

	@Column(name = "cash_payment")
	private double cashPayment;

	@Column(name = "pay_status")
	private String payStatus;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "order_date")
	private LocalDate date;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "nextpayment_status")
	private LocalDate nextPaymentStatus;
	
	
	@OneToMany(mappedBy = "purchaseId", cascade = CascadeType.ALL)
	private List<SupplierHistory> supplierHistory;
	  

}
