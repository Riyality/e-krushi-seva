CREATE TABLE `krushi`.`productdtls` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `productname` VARCHAR(255) NULL,
  `manufacture` VARCHAR(255) NULL,
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
  PRIMARY KEY (`id`));

  
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