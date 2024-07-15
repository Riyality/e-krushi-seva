package com.krushiSevaCenter.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "supplier")
public class Supplier {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private long id;
    
    @Column(name = "name")
    private String name;
    
    @Column(name = "contact")
    private long contact;
    
    @Column(name = "address")
    private String address;
    
    @Column(name = "state")
    private String state;
    
    @Column(name = "city")
    private String city;
    
    @Column(name = "pincode")
    private int pincode;
    
    @Column(name = "email")
    private String email;
    
    @Column(name = "mobile_no")
    private long mobileNo;
        
    @Column(name = "adhar_card_no")
    private long adharCardNo;
    
    @Column(name = "opening_balance")
    private double openingBalance;
    
    @Column(name = "credit")
    private String credit;
    
    @Column(name = "gst_no")
    private long gstNo;
    
    @Column(name = "gst_type")
    private String gstType;
}
