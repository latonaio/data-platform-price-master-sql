CREATE TABLE `data_platform_price_master_price_master_data`
(
    `BusinessPartner`             int(12) NOT NULL,
    `ConditionRecordCategory`     varchar(2) NOT NULL,
    `ConditionRecord`             int(12) NOT NULL,
    `ConditionSequentialNumber`   int(2) NOT NULL,
    `ConditionType`               varchar(4) NOT NULL,
    `ConditionValidityEndDate`    date NOT NULL,
    `ConditionValidityStartDate`  date NOT NULL,
    `Product`                     varchar(40) DEFAULT NULL,
--  `SalesOrPurchaseOrganization` varchar(4) DEFAULT NULL,
--  `DistributionChannel`         varchar(2) DEFAULT NULL,
    `Customer`                    int(12) DEFAULT NULL,
    `Supplier`                    int(12) DEFAULT NULL,
    `CreationDate`                date DEFAULT NULL,
    `ConditionRateValue`          float(13) DEFAULT NULL,
    `ConditionRateValueUnit`      varchar(3) DEFAULT NULL,
    `ConditionRateRatio`          float(5) DEFAULT NULL,
    `ConditionRateRatioUnit`      varchar(3) DEFAULT NULL,
    `ConditionCurrency`           varchar(5) DEFAULT NULL,
    `BaseUnit`                    varchar(3) DEFAULT NULL,
    `ConditionIsDeleted`          tinyint(1) DEFAULT NULL,
    
     PRIMARY KEY (`BusinessPartner`, `ConditionRecordCategory`, `ConditionRecord`, `ConditionSequentialNumber`, `ConditionType`, `ConditionValidityEndDate`, `ConditionValidityStartDate`, `Product`),
     
    CONSTRAINT `DataPlatformPriceMasterPriceMasterDataBusinessPartner_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformPriceMasterPriceMasterDataProduct_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`),
    CONSTRAINT `DataPlatformPriceMasterPriceMasterDataCustomer_fk` FOREIGN KEY (`BusinessPartner`, `Customer`) REFERENCES `data_platform_business_partner_customer_data` (`BusinessPartner`, `Customer`),
    CONSTRAINT `DataPlatformPriceMasterPriceMasterDataSupplier_fk` FOREIGN KEY (`BusinessPartner`, `Supplier`) REFERENCES `data_platform_business_partner_supplier_data` (`BusinessPartner`, `Supplier`),
    CONSTRAINT `DataPlatformPriceMasterPriceMasterDataConditionRateValueUnit_fk` FOREIGN KEY (`ConditionRateValueUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),
    CONSTRAINT `DataPlatformPriceMasterPriceMasterDataConditionRateRatioUnit_fk` FOREIGN KEY (`ConditionRateRatioUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),
    CONSTRAINT `DataPlatformPriceMasterPriceMasterDataConditionCurrency_fk` FOREIGN KEY (`ConditionCurrency`) REFERENCES `data_platform_currency_currency_data` (`Currency`),
    CONSTRAINT `DataPlatformPriceMasterPriceMasterDataBaseUnit_fk` FOREIGN KEY (`BaseUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
