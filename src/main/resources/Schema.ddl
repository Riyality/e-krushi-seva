	CREATE SCHEMA `krushi`;

  CREATE TABLE `krushi`.`manufacture` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `mfr` VARCHAR(255) NULL,
  `shortname` VARCHAR(255) NULL,
  `address` VARCHAR(255) NULL,
  `city` VARCHAR(255) NULL,
  `pincode` VARCHAR(255) NULL,
  `telephoneno` VARCHAR(255) NULL,
  `mobile` VARCHAR(255) NULL,
  `email` VARCHAR(255) NULL,
  `webaddress` VARCHAR(255) NULL,
  PRIMARY KEY (`id`));


CREATE TABLE `krushi`.`productdtls` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `productname` VARCHAR(255) NULL,
  `manufacture` INT NULL,
  `itemtype` VARCHAR(255) NULL,
  `packing` VARCHAR(255) NULL,
  `batchno` VARCHAR(255) NULL,
  `godown` VARCHAR(255) NULL,
  `rack` VARCHAR(255) NULL,
  `openingstock` VARCHAR(255) NULL,
  `expirydate` VARCHAR(255) NULL,
  `hsncode` VARCHAR(255) NULL,
  `purchasegst` VARCHAR(255) NULL,
  `gst` VARCHAR(255) NULL,
  `purchaseprice` VARCHAR(255) NULL,
  `mrp` VARCHAR(255) NULL,
  `cashprice` VARCHAR(255) NULL,
  `creditprice` VARCHAR(255) NULL,
  `wholesale` VARCHAR(255) NULL,
  `creditwholesale` VARCHAR(255) NULL,
  `barcode` VARCHAR(255) NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (manufacture) REFERENCES manufacture(id));
  
  ALTER TABLE `krushi`.`productdtls` 
CHANGE COLUMN `expirydate` `expirydate` DATE NULL DEFAULT NULL ;
  
  
  ALTER TABLE `krushi`.`productdtls` 
CHANGE COLUMN `id` `id` BIGINT NOT NULL AUTO_INCREMENT ;


 CREATE TABLE `krushi`.`Companydtls` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `company_name` VARCHAR(255) NULL,
  `address` VARCHAR(255) NULL,
  `city` VARCHAR(255) NULL,
  `pincode` VARCHAR(255) NULL,
  `telephone_no` VARCHAR(255) NULL,
  `email` VARCHAR(255) NULL,
  `web_address` VARCHAR(255) NULL,
  `mobile_No` VARCHAR(255) NULL,
  `state` VARCHAR(255) NULL,
  `licsno1` VARCHAR(255) NULL,
  `licsno2` VARCHAR(255) NULL,
  `licsno3` VARCHAR(255) NULL,
  `licsno4` VARCHAR(255) NULL,
  `licsno5` VARCHAR(255) NULL,
  `bstno` VARCHAR(255) NULL,
  `cstno` VARCHAR(255) NULL,
  `gstno` VARCHAR(255) NULL,
  `callforservices` VARCHAR(255) NULL,
  PRIMARY KEY (`id`));
  
    Drop table customers; 
 CREATE TABLE krushi.customers (
    customer_ID INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(255) ,
    area VARCHAR(255),
    address VARCHAR(255),
    taluka VARCHAR(255),
    district VARCHAR(255),
    state VARCHAR(255),
    `group` VARCHAR(255),  
    categories VARCHAR(255),
    mobile_no VARCHAR(20),
    email_id VARCHAR(255),
    gst_no VARCHAR(20),
    aadhar_no VARCHAR(20),
    pin_code VARCHAR(10),
    opening_balance VARCHAR(255),
    payment_type VARCHAR(50),
    interest VARCHAR(255),
    interest_type VARCHAR(50),
    gst VARCHAR(255),
    status VARCHAR(50),
    birthday DATE
);

CREATE TABLE `krushi`.`rackno` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `rack` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
  
CREATE TABLE `krushi`.`customerinvoice` (
  `id` BIGINT(240) NOT NULL AUTO_INCREMENT,
  `customer_id` BIGINT(240) NULL,
  `amount` BIGINT(255) NULL,
  `paid_amount` BIGINT(240) NULL,
  `remaining_amount` BIGINT(255) NULL,
  `online_payment` BIGINT(240) NULL,
  `cash_payment` BIGINT(240) NULL,
  `pay_status` VARCHAR(255) NULL,
  `date` DATE NULL,
  `nextpayment_status` DATE NULL,
  PRIMARY KEY (`id`));
  
CREATE TABLE `krushi`.`customerhistory` (
  `id` BIGINT(240) NOT NULL AUTO_INCREMENT,
  `customer_id` BIGINT(255) NULL,
  `product_id` BIGINT(255) NULL,
  `date` DATE NULL,
  `amount` BIGINT(240) NULL,
  `quantity` INT NULL,
  `bill_id` BIGINT(240) NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`bill_id`) REFERENCES `customerinvoice`(`id`)
);


ALTER TABLE customerinvoice
ADD FOREIGN KEY(customer_id)
REFERENCES customers(customer_ID);

