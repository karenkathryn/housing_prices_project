/*
    Author:     Yu Fen Lin
    Date:       Dec. 3, 2019
    Purpose:    Import housing prices of King County in 2018 CSV files into PostgreSQL tables
    Note: TODO: 
*/
-- Drop any existing tables --
DROP TABLE IF EXISTS real_property_sales;
DROP TABLE IF EXISTS residential_building;
DROP TABLE IF EXISTS parcel;

-- Create skeleton table for real property sales --
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

-- Create skeleton table residentail_building --
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

-- -- Create skeleton table for parcel --
CREATE TABLE parcel (
    Major TEXT, 
    Minor TEXT, 
    PropName TEXT, 
    PlatName TEXT, 
    PlatLot TEXT, 
    PlatBlock TEXT,
    RRange BIGINT, 
    Township BIGINT, 
    Section BIGINT, 
    QuarterSection TEXT, 
    PropType TEXT, 
    Area TEXT,
    SubArea TEXT, 
    SpecArea TEXT, 
    SpecSubArea TEXT, 
    DistrictName TEXT, 
    LevyCode TEXT,
    CurrentZoning TEXT, 
    HBUAsIfVacant BIGINT, 
    HBUAsImproved BIGINT, 
    PresentUse BIGINT,
    SqFtLot BIGINT, 
    WaterSystem BIGINT, 
    SewerSystem BIGINT, 
    Access BIGINT, 
    Topography BIGINT,
    StreetSurface BIGINT, 
    RestrictiveSzShape BIGINT, 
    InadequateParking BIGINT,
    PcntUnusable BIGINT, 
    Unbuildable TEXT,  
    MtRainier BIGINT, 
    Olympics BIGINT, 
    Cascades BIGINT,
    Territorial BIGINT, 
    SeattleSkyline BIGINT, 
    PugetSound BIGINT, 
    LakeWashington BIGINT,
    LakeSammamish BIGINT, 
    SmallLakeRiverCreek BIGINT, 
    OtherView BIGINT, 
    WfntLocation BIGINT,
    WfntFootage BIGINT, 
    WfntBank BIGINT, 
    WfntPoorQuality BIGINT, 
    WfntRestrictedAccess BIGINT,
    WfntAccessRights TEXT, 
    WfntProximityInfluence TEXT, 
    TidelandShoreland BIGINT,
    LotDepthFactor BIGINT, 
    TrafficNoise BIGINT, 
    AirportNoise BIGINT, 
    PowerLines TEXT,
    OtherNuisances TEXT, 
    NbrBldgSites BIGINT, 
    Contamination BIGINT, 
    DNRLease TEXT,
    AdjacentGolfFairway TEXT, 
    AdjacentGreenbelt TEXT, 
    HistoricSite BIGINT,
    CurrentUseDesignation BIGINT, 
    NativeGrowthProtEsmt TEXT, 
    Easements TEXT,
    OtherDesignation TEXT, 
    DeedRestrictions TEXT, 
    DevelopmentRightsPurch TEXT,
    CoalMineHazard TEXT, 
    CriticalDrainage TEXT, 
    ErosionHazard TEXT, 
    LandfillBuffer TEXT,
    HundredYrFloodPlain TEXT, 
    SeismicHazard TEXT, 
    LandslideHazard TEXT,
    SteepSlopeHazard TEXT, 
    Stream TEXT, 
    Wetland TEXT, 
    SpeciesOfConcern TEXT,
    SensitiveAreaTract TEXT, 
    WaterProblems TEXT, 
    TranspConcurrency TEXT,
    OtherProblems TEXT
);

-- Copy the CSV contents of each file and place it into the appropriate table
COPY real_property_sales
    FROM '/Users/chuhsitseng/flatiron/project/housing_prices_project/data/raw/EXTR_RPSale.csv'
    DELIMITER ',' CSV HEADER;

COPY residential_building
    FROM '/Users/chuhsitseng/flatiron/project/housing_prices_project/data/raw/EXTR_ResBldg.csv'
    DELIMITER ',' CSV HEADER;

SET client_encoding = 'latin1';
COPY parcel
    FROM '/Users/chuhsitseng/flatiron/project/housing_prices_project/data/raw/EXTR_Parcel.csv'
    DELIMITER ',' CSV HEADER;