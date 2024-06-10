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

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "customers")
public class CustomerEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "customer_ID")
    private int customer_ID;

    @Column(name = "customer_name")
    private String customer_name;

    @Column(name = "area")
    private String area;

    @Column(name = "address")
    private String address;

    @Column(name = "Taluka")
    private String taluka;

    @Column(name = "district")
    private String district;

    @Column(name = "state")
    private String state;

    @Column(name = "`group`")  
    private String group;

    @Column(name = "categories")
    private String categories;

    @Column(name = "mobile_no")
    private String mobile_no;

    @Column(name = "email_id")
    private String email_id;

    @Column(name = "gst_no")
    private String gst_no;

    @Column(name = "aadhar_no")
    private String aadhar_no;
    
    

    @Column(name = "pin_code")
    private String pin_code;

    @Column(name = "opening_balance")
    private String opening_balance;

    @Column(name = "payment_type") 
    private String payment_type;

    @Column(name = "interest")
    private String interest;

    @Column(name = "interest_type")
    private String interest_type;

    @Column(name = "gst")
    private String gst;

    @Column(name = "status")
    private String status;

    @Column(name = "birthday")
    private String birthday;
}
