package com.krushiSevaCenter.entity;

import java.time.LocalDate;
import javax.persistence.*;

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
@Table(name = "billhistory")
public class BillHistory {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private long id;

    @ManyToOne
    @JoinColumn(name = "bill_id", nullable = false)
    private CustomerBill billId;

    
    @Column(name = "online_paid")
    private double online_Payment;

    @Column(name = "cash_paid")
    private double cash_Payment;
   

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Column(name = "bill_date")
    private LocalDate billDate;


}