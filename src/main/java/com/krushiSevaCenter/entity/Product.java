package com.krushiSevaCenter.entity;
import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


import com.fasterxml.jackson.annotation.JsonBackReference;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Entity
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Table(name = "productdtls")
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name ="id" )
    private int id;

    @Column(name="productname")
    private String productName;

    @ManyToOne
    @JoinColumn(name ="manufacture")

    @JsonBackReference

    private ManuFacture manuFacture;

    @Column(name="itemtype")
    private String itemType;

    @Column(name="packing")
    private String packing;

    @Column(name="batchno")
    private String batchNo;

    @Column(name="godown")
    private String godown;



  
    @Column(name = "rack")
    private String rackNo;
    
    @Column(name="openingstock")
    private String openingStock;

    @Column(name="expirydate")
    private String expiryDate;

    @Column(name="hsncode")
    private String hsnCode;

    @Column(name="purchasegst")
    private String purchaseGst;

    @Column(name="gst")
    private String gst;

    @Column(name="purchaseprice")
    private int purchasePrice;

    @Column(name="mrp")
    private int mrp;

    @Column(name="cashprice")
    private int cashPrice;

    @Column(name="creditprice")
    private int creditPrice;

    @Column(name="wholesale")
    private int wholeSale;

    @Column(name="creditwholesale")
    private int creditWholeSale;

    @Column(name="barcode")
    private int barCode;
}
