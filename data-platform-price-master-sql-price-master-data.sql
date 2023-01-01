CREATE TABLE `data_platform_price_master_price_master_data`
(
    `SupplyChainRelationshipID`   int(16) NOT NULL,
    `Buyer`                       int(12) NOT NULL,
    `Seller`                      int(12) NOT NULL,
--  `ConditionRecordCategory`     varchar(2) NOT NULL,
    `ConditionRecord`             int(12) NOT NULL,
    `ConditionSequentialNumber`   int(2) NOT NULL,
    `ConditionValidityEndDate`    date NOT NULL,
    `ConditionValidityStartDate`  date NOT NULL,
    `Product`                     varchar(40) DEFAULT NULL,
    `ConditionType`               varchar(4) NOT NULL,
    `CreationDate`                date DEFAULT NULL,
    `ConditionRateValue`          float(13) DEFAULT NULL,
    `ConditionRateValueUnit`      varchar(3) DEFAULT NULL,
    `ConditionRateRatio`          float(5) DEFAULT NULL,
    `ConditionRateRatioUnit`      varchar(3) DEFAULT NULL,
    `ConditionCurrency`           varchar(5) DEFAULT NULL,
    `BaseUnit`                    varchar(3) DEFAULT NULL,
    `ConditionIsDeleted`          tinyint(1) DEFAULT NULL,
    
    PRIMARY KEY (`SupplyChainRelationshipID`, `Buyer`, `Seller`, `ConditionRecord`, `ConditionSequentialNumber`, `Product`, `ConditionValidityEndDate`, `ConditionValidityStartDate`),

    CONSTRAINT `DataPlatformPriceMasterPriceMasterDataSupplyChainRelationshipID_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `Buyer`, `Seller`) REFERENCES `data_platform_supply_chain_relationship_general_data` (`SupplyChainRelationshipID`, `Buyer`, `Seller`),
    CONSTRAINT `DataPlatformPriceMasterPriceMasterDataProduct_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`),
    CONSTRAINT `DataPlatformPriceMasterPriceMasterDataConditionRateValueUnit_fk` FOREIGN KEY (`ConditionRateValueUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),
    CONSTRAINT `DataPlatformPriceMasterPriceMasterDataConditionRateRatioUnit_fk` FOREIGN KEY (`ConditionRateRatioUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),
    CONSTRAINT `DataPlatformPriceMasterPriceMasterDataConditionCurrency_fk` FOREIGN KEY (`ConditionCurrency`) REFERENCES `data_platform_currency_currency_data` (`Currency`),
    CONSTRAINT `DataPlatformPriceMasterPriceMasterDataBaseUnit_fk` FOREIGN KEY (`BaseUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
