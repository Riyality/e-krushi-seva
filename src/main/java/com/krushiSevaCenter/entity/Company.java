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
@Table(name = "companydtls")
public class Company {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private int id;

	@Column(name = "company_name")
	private String company_Name;

	@Column(name = "address")
	private String address;

	@Column(name = "city")
	private String city;

	@Column(name = "pincode")
	private String pincode;

	@Column(name = "telephone_no")
	private String telephone_No;

	@Column(name = "email")
	private String email;

	@Column(name = "web_address")
	private String web_Address;

	@Column(name = "mobile_No")
	private String mobile_No;

	@Column(name = "state")
	private String state;

	@Column(name = "licsno1")
	private String licsNo1;

	@Column(name = "licsno2")
	private String licsNo2;

	@Column(name = "licsno3")
	private String licsNo3;

	@Column(name = "licsno4")
	private String licsNo4;

	@Column(name = "licsno5")
	private String licsNo5;

	@Column(name = "bstno")
	private String bstNo;

	@Column(name = "cstno")
	private String cstNo;

	@Column(name = "gstno")
	private String gstNo;

	@Column(name = "callforservices")
	private String callForServices;

}
