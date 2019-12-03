/*
    Author:     Yu Fen Lin
    Date:       Dec. 2, 2019
    Purpose:          
    Note: TODO: 
*/
DROP TABLE IF EXISTS real_property_sales;
DROP TABLE IF EXISTS residential_building;

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

CREATE TABLE residential_building (
    Major BIGINT, 
    Minor BIGINT, 
    BldgNbr BIGINT, 
    NbrLivingUnits BIGINT, 
    AAddress TEXT,
    BuildingNumber TEXT, 
    Fraction TEXT, 
    DirectionPrefix TEXT, 
    StreetName TEXT,
    StreetType TEXT, 
    DirectionSuffix TEXT, 
    ZipCode TEXT, 
    Stories REAL, 
    BldgGrade BIGINT,
    BldgGradeVar BIGINT, 
    SqFt1stFloor BIGINT, 
    SqFtHalfFloor BIGINT, 
    SqFt2ndFloor BIGINT,
    SqFtUpperFloor BIGINT, 
    SqFtUnfinFull BIGINT, 
    SqFtUnfinHalf BIGINT, 
    SqFtTotLiving BIGINT,
    SqFtTotBasement BIGINT, 
    SqFtFinBasement BIGINT, 
    FinBasementGrade BIGINT,
    SqFtGarageBasement BIGINT, 
    SqFtGarageAttached BIGINT, 
    DaylightBasement TEXT,
    SqFtOpenPorch BIGINT, 
    SqFtEnclosedPorch BIGINT, 
    SqFtDeck BIGINT, 
    HeatSystem BIGINT,
    HeatSource BIGINT, 
    BrickStone BIGINT, 
    ViewUtilization TEXT, 
    Bedrooms BIGINT,
    BathHalfCount BIGINT, 
    Bath3qtrCount BIGINT, 
    BathFullCount BIGINT, 
    FpSingleStory BIGINT,
    FpMultiStory BIGINT, 
    FpFreestanding BIGINT, 
    FpAdditional BIGINT, 
    YrBuilt BIGINT,
    YrRenovated BIGINT, 
    PcntComplete BIGINT, 
    Obsolescence BIGINT, 
    PcntNetCondition BIGINT,
    Condition BIGINT, 
    AddnlCost BIGINT
);

COPY real_property_sales
FROM '/Users/chuhsitseng/flatiron/project/housing_prices_project/data/raw/EXTR_RPSale.csv'
DELIMITER ',' CSV HEADER;

COPY residential_building
FROM '/Users/chuhsitseng/flatiron/project/housing_prices_project/data/raw/EXTR_ResBldg.csv'
DELIMITER ',' CSV HEADER;