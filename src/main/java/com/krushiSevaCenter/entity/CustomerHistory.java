package com.krushiSevaCenter.entity;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "customerhistory")
public class CustomerHistory {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private long id;
    
    @Column(name = "customer_id")
    private long customerId;
    
    @Column(name = "product_id")
    private long productId;
    
    @Column(name = "date")
    private LocalDate date;
    
    @Column(name = "amount")
    private Double amount;
    
    
    @Column(name = "quantity")
    private long quantity;
    
    
    @ManyToOne
    @JoinColumn(name = "bill_id") 
    private CustomerBill billId;


	
  
}
