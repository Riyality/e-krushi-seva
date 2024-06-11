
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

  
 