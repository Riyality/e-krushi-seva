package com.krushiSevaCenter.entity;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

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

    @Column(name = "customer_id")
    private long customerId;

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

    @Column(name = "date")
    private LocalDate date;

    @Column(name = "nextpayment_status")
    private String nextPaymentStatus;

    @OneToMany(mappedBy = "billId", cascade = CascadeType.ALL)
    private List<CustomerHistory> customerhistory;

   
}
