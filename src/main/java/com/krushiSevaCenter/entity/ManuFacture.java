package com.krushiSevaCenter.entity;

import java.util.List;

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

@AllArgsConstructor
@Getter
@Setter
@NoArgsConstructor
@Entity
@Table(name = "manufacture")
public class ManuFacture {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	 @Column(name = "id")
     private int id;
 
	  @Column(name ="mfr")
      private long mfrNO;
	  
	  @Column(name = "shortname")
      private String shortName;
	  
	  @Column(name = "address")
	  private String addressOne;
	  
	  @Column(name = "city")
	  private String city;
	  
	  
	  @Column(name ="pincode" )
	  private long pinCode;
	  
	  @Column(name = "telephoneno")
	  private  long telephoneNo;
	  
	  @Column(name = "mobile")
	  private long mobileNo;
	  
	  @Column(name = "email")
	  private String email;
	  
	  
	  @Column(name = "webaddress")
	  private String webAddress;
	  
	  @OneToMany
	  private List<ProductEntity> products;
	  
	  
	  
	  
}
