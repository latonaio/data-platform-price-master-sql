CREATE TABLE `data_platform_price_master_price_master_data`
(
    `BusinessPartner`             varchar(10) NOT NULL,  --新規追加
    `ConditionRecord`             varchar(10) NOT NULL,
    `ConditionSequentialNumber`   varchar(2) NOT NULL,
    `ConditionType`               varchar(4) NOT NULL,
    `ConditionValidityEndDate`    varchar(80) NOT NULL,
    `ConditionValidityStartDate`  varchar(80) DEFAULT NULL,
    `Product`                     varchar(40) DEFAULT NULL,
    `SalesOrPurchaseOrganization` varchar(4) DEFAULT NULL,
    `DistributionChannel`         varchar(2) DEFAULT NULL,
    `Customer`                    varchar(10) DEFAULT NULL,  --新規追加
    `Supplier`                    varchar(10) DEFAULT NULL,  --新規追加
    `CreationDate`                varchar(80) DEFAULT NULL,
    `ConditionRateValue`          varchar(15) DEFAULT NULL,
    `ConditionRateValueUnit`      varchar(5) DEFAULT NULL,
    `ConditionRateRatio`          varchar(5) DEFAULT NULL,
    `ConditionRateRatioUnit`      varchar(5) DEFAULT NULL,
    `ConditionCurrency`           varchar(5) DEFAULT NULL,
    `BaseUnit`                    varchar(3) DEFAULT NULL,
    `ConditionIsDeleted`          tinyint(1) DEFAULT NULL,
     PRIMARY KEY (`BusinessPartner`, `ConditionRecord`, `ConditionSequentialNumber`, `ConditionType`, `ConditionValidityEndDate`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
