package com.krushiSevaCenter.entity;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
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

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "customerinvoice")
public class CustomerBill {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private long id;

	/*@ManyToOne
	@JoinColumn(name = "customer_id")
	private customer customerId;
*/
	
	 @ManyToOne
	    @JoinColumn(name = "customer_id")
	    @JsonDeserialize(using = CustomerDeserializer.class)
	    private customer customerId;
	
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
	@Column(name = "date")
	private LocalDate date;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "nextpayment_status")
	private LocalDate nextPaymentStatus;

	@OneToMany(mappedBy = "billId", cascade = CascadeType.ALL)
	private List<CustomerHistory> customerhistory;

}
