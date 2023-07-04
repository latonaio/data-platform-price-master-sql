CREATE TABLE `data_platform_price_master_price_master_data`
(
    `SupplyChainRelationshipID`   int(16) NOT NULL,
    `Buyer`                       int(12) NOT NULL,
    `Seller`                      int(12) NOT NULL,
    `ConditionRecord`             int(12) NOT NULL,
    `ConditionSequentialNumber`   int(2) NOT NULL,
    `Product`                     varchar(40) NOT NULL,
    `ConditionValidityStartDate`  date NOT NULL,
    `ConditionValidityEndDate`    date NOT NULL,
    `ConditionType`               varchar(4) NOT NULL,
    `ConditionRateValue`          float(13) NOT NULL,
    `ConditionRateValueUnit`      int(6) NOT NULL,
    `ConditionScaleQuantity`      int(13) NOT NULL,
    `ConditionCurrency`           varchar(5) NOT NULL,
    `CreationDate`                date NOT NULL,
    `LastChangeDate`              date NOT NULL,
    `IsMarkedForDeletion`         tinyint(1) DEFAULT NULL,
    
    PRIMARY KEY (`SupplyChainRelationshipID`, `Buyer`, `Seller`, `ConditionRecord`, `ConditionSequentialNumber`, `Product`, `ConditionValidityStartDate`, `ConditionValidityEndDate`),

    CONSTRAINT `DPFMPriceMasterPriceMasterDataSCRID_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `Buyer`, `Seller`) REFERENCES `data_platform_supply_chain_relationship_general_data` (`SupplyChainRelationshipID`, `Buyer`, `Seller`),
    CONSTRAINT `DPFMPriceMasterPriceMasterDataProduct_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`),
    CONSTRAINT `DPFMPriceMasterPriceMasterDataConditionCurrency_fk` FOREIGN KEY (`ConditionCurrency`) REFERENCES `data_platform_currency_currency_data` (`Currency`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
