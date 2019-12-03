/*
    Author:     Yu Fen Lin
    Date:       Dec. 2, 2019
    Purpose:                    
    Note: TODO: 
*/
DROP TABLE IF EXISTS real_property_sales;
CREATE TABLE real_property_sales (
    ExciseTaxNbr BIGINT, 
    Major TEXT, 
    Minor TEXT, 
    DocumentDate TEXT, 
    SalePrice BIGINT,
    RecordingNbr TEXT, 
    Volume TEXT, 
    PPage TEXT, 
    PlatNbr TEXT, 
    PlatType TEXT, 
    PlatLot TEXT,
    PlatBlock TEXT, 
    SellerName TEXT, 
    BuyerName TEXT, 
    PropertyType BIGINT, 
    PrincipalUse BIGINT,
    SaleInstrument BIGINT, 
    AFForestLand TEXT, 
    AFCurrentUseLand TEXT, 
    AFNonProfitUse TEXT,
    AFHistoricProperty TEXT, 
    SaleReason BIGINT, 
    PropertyClass BIGINT, 
    SaleWarning TEXT
);
-- CREATE TABLE real_property_sales (
--     ExciseTaxNbr INTEGER, 
--     Major CHAR(6), 
--     Minor CHAR(4), 
--     DocumentDate CHAR(10), 
--     SalePrice INTEGER,
--     RecordingNbr CHAR(14), 
--     Volume CHAR(3), 
--     PPage CHAR(3), 
--     PlatNbr CHAR(6), 
--     PlatType CHAR(1), 
--     PlatLot CHAR(14),
--     PlatBlock CHAR(7), 
--     SellerName CHAR(300), 
--     BuyerName CHAR(300), 
--     PropertyType INTEGER, 
--     PrincipalUse INTEGER,
--     SaleInstrument INTEGER, 
--     AFForestLand CHAR(1), 
--     AFCurrentUseLand CHAR(1), 
--     AFNonProfitUse CHAR(1),
--     AFHistoricProperty CHAR(1), 
--     SaleReason INTEGER, 
--     PropertyClass INTEGER, 
--     SaleWarning INTEGER
-- );

COPY real_property_sales
FROM '/Users/chuhsitseng/flatiron/project/housing_prices_project/data/raw/EXTR_RPSale.csv'
DELIMITER ',' CSV HEADER;

