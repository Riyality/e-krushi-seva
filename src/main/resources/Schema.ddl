	CREATE SCHEMA `krushi`;
	
	USE `krushi`;

  CREATE TABLE `manufacture` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mfr` varchar(255) DEFAULT NULL,
  `shortname` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `telephoneno` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `webaddress` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);


CREATE TABLE `productdtls` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `productname` varchar(255) DEFAULT NULL,
  `manufacture` int DEFAULT NULL,
  `itemtype` varchar(255) DEFAULT NULL,
  `packing` varchar(255) DEFAULT NULL,
  `batchno` varchar(255) DEFAULT NULL,
  `godown` varchar(255) DEFAULT NULL,
  `rack` varchar(255) DEFAULT NULL,
  `openingstock` varchar(255) DEFAULT NULL,
  `expirydate` date DEFAULT NULL,
  `hsncode` varchar(255) DEFAULT NULL,
  `purchasegst` varchar(255) DEFAULT NULL,
  `gst` varchar(255) DEFAULT NULL,
  `purchaseprice` varchar(255) DEFAULT NULL,
  `mrp` varchar(255) DEFAULT NULL,
  `cashprice` varchar(255) DEFAULT NULL,
  `creditprice` varchar(255) DEFAULT NULL,
  `wholesale` varchar(255) DEFAULT NULL,
  `creditwholesale` varchar(255) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `manufacture` (`manufacture`),
  CONSTRAINT `productdtls_ibfk_1` FOREIGN KEY (`manufacture`) REFERENCES `manufacture` (`id`)
);



 CREATE TABLE `companydtls` (
  `id` int NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `bstno` varchar(255) DEFAULT NULL,
  `callforservices` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `cstno` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gstno` varchar(255) DEFAULT NULL,
  `licsno1` varchar(255) DEFAULT NULL,
  `licsno2` varchar(255) DEFAULT NULL,
  `licsno3` varchar(255) DEFAULT NULL,
  `licsno4` varchar(255) DEFAULT NULL,
  `licsno5` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `telephone_no` varchar(255) DEFAULT NULL,
  `web_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);


   Drop table customers; 
 CREATE TABLE `customers` (
  `customer_ID` int NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `taluka` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `group` varchar(255) DEFAULT NULL,
  `categories` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(20) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `gst_no` varchar(20) DEFAULT NULL,
  `aadhar_no` varchar(20) DEFAULT NULL,
  `pin_code` varchar(10) DEFAULT NULL,
  `opening_balance` varchar(255) DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT NULL,
  `interest` varchar(255) DEFAULT NULL,
  `interest_type` varchar(50) DEFAULT NULL,
  `gst` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  PRIMARY KEY (`customer_ID`)
);

CREATE TABLE `rackno` (
  `id` int NOT NULL,
  `rack` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
  
CREATE TABLE `customerinvoice` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customer_id` bigint DEFAULT NULL,
  `amount` bigint DEFAULT NULL,
  `paid_amount` bigint DEFAULT NULL,
  `remaining_amount` bigint DEFAULT NULL,
  `online_payment` bigint DEFAULT NULL,
  `cash_payment` bigint DEFAULT NULL,
  `pay_status` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `nextpayment_status` date DEFAULT NULL,
  `sell_type` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);


  
CREATE TABLE `customerhistory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customer_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` bigint DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `bill_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bill_id` (`bill_id`),
  CONSTRAINT `customerhistory_ibfk_1` FOREIGN KEY (`bill_id`) REFERENCES `customerinvoice` (`id`)
);






CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `reset_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`));



DROP TABLE IF EXISTS BillHistory;
CREATE TABLE `billhistory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `bill_id` bigint DEFAULT NULL,
  `online_paid` double DEFAULT NULL,
  `cash_paid` double DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `next_payment_status` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_bill_history_customer_bill` (`bill_id`),
  CONSTRAINT `fk_bill_history_customer_bill` FOREIGN KEY (`bill_id`) REFERENCES `customerinvoice` (`id`)
);

 
 
CREATE TABLE `krushi`.`supplier` (
  `id` BIGINT(255) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NULL,
  `contact` VARCHAR(255) NULL,
  `address` VARCHAR(255) NULL,
  `state` VARCHAR(255) NULL,
  `city` VARCHAR(255) NULL,
  `pincode` INT NULL,
  `email` VARCHAR(255) NULL,
  `mobile_no` VARCHAR(255) NULL,
  `adhar_no` VARCHAR(255) NULL,
  `adhar_card_no` VARCHAR(255) NULL,
  `opening_balance` DECIMAL(15, 2) NULL,
  `credit` VARCHAR(255) NULL,
  `gst_no` VARCHAR(255) NULL,
  `gst_type` VARCHAR(255) NULL,
  PRIMARY KEY (`id`)
);

  CREATE TABLE `supplierhistory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `supplier_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `amount` bigint DEFAULT NULL,
  `quantity` bigint DEFAULT NULL,
  `purchase_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_id` (`purchase_id`),
  CONSTRAINT `supplierhistory_ibfk_1` FOREIGN KEY (`purchase_id`) REFERENCES `purchasebill` (`id`)
) 

CREATE TABLE `purchasebill` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `supplier_id` bigint DEFAULT NULL,
  `order_number` bigint DEFAULT NULL,
  `amount` bigint DEFAULT NULL,
  `paid_amount` bigint DEFAULT NULL,
  `remaining_amount` bigint DEFAULT NULL,
  `online_payment` bigint DEFAULT NULL,
  `cash_payment` bigint DEFAULT NULL,
  `pay_status` varchar(45) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `nextpayment_status` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `supplier_id` (`supplier_id`),
  CONSTRAINT `purchasebill_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`)
)

CREATE TABLE `krushi`.`purchasebillhistory` (
  `id` BIGINT(255) NOT NULL AUTO_INCREMENT,
  `bill_id` BIGINT(255) NULL,
  `online_paid` BIGINT(255) NULL,
  `cash_paid` BIGINT(255) NULL,
  `bill_date` DATE NULL,
  `next_payment_status` DATE NULL,
  PRIMARY KEY (`id`));

