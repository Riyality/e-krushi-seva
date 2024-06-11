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


  
    Drop table Customers; 
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
