/*
    Author:     Karen Warmbein from template by Yu Fen Lin
    Date:       Dec. 2, 2019
    Purpose:    Create SQL table from csv                 
    Note: TODO: 
*/
DROP TABLE IF EXISTS property_sale;
CREATE TABLE property_sale (
    ExciseTaxNbr          BIGINT,
    Major                 TEXT,
    Minor                 TEXT,
    DocumentDate          TEXT,
    SalePrice             BIGINT,
    RecordingNbr          TEXT,
    Volume                TEXT,
    Ppage                  TEXT,
    PlatNbr               TEXT,
    PlatType              TEXT,
    PlatLot               TEXT,
    PlatBlock             TEXT,
    SellerName            TEXT,
    BuyerName             TEXT,
    PropertyType          BIGINT,
    PrincipalUse          BIGINT,
    SaleInstrument        BIGINT,
    AFForestLand          TEXT,
    AFCurrentUseLand      TEXT,
    AFNonProfitUse        TEXT,
    AFHistoricProperty    TEXT,
    SaleReason            BIGINT,
    PropertyClass         BIGINT,
    SaleWarning           TEXT
);

COPY property_sale
    FROM '/Users/karenwarmbein/ds/projects/housing_prices_project/data/raw/EXTR_RPSale.csv'
    DELIMITER ',' CSV HEADER;

DROP TABLE IF EXISTS res_bldg;
CREATE TABLE res_bldg (
    Major BIGINT,
    Minor  BIGINT,
    BldgNbr BIGINT,
    NbrLivingUnits BIGINT,
    Aaddress TEXT,
    BuildingNumber TEXT,
    Fraction TEXT,
    DirectionPrefix TEXT,
    StreetName TEXT,
    StreetType TEXT,
    DirectionSuffix TEXT,
    ZipCode TEXT,
    Stories  REAL,
    BldgGrade        BIGINT,
    BldgGradeVar     BIGINT,
    SqFt1stFloor     BIGINT,
    SqFtHalfFloor    BIGINT,
    SqFt2ndFloor     BIGINT,
    SqFtUpperFloor   BIGINT,
    SqFtUnfinFull    BIGINT,
    SqFtUnfinHalf    BIGINT,
    SqFtTotLiving    BIGINT,
    SqFtTotBasement  BIGINT,
    SqFtFinBasement  BIGINT,
    FinBasementGrade BIGINT,
    SqFtGarageBasement BIGINT,
    SqFtGarageAttached BIGINT,
    DaylightBasement TEXT,
    SqFtOpenPorch    BIGINT,
    SqFtEnclosedPorch BIGINT,
    SqFtDeck         BIGINT,
    HeatSystem       BIGINT,
    HeatSource       BIGINT,
    BrickStone       BIGINT,
    ViewUtilization TEXT,
    Bedrooms         BIGINT,
    BathHalfCount    BIGINT,
    Bath3qtrCount    BIGINT,
    BathFullCount    BIGINT,
    FpSingleStory    BIGINT,
    FpMultiStory     BIGINT,
    FpFreestanding   BIGINT,
    FpAdditional     BIGINT,
    YrBuilt BIGINT,
    YrRenovated      BIGINT,
    PcntComplete     BIGINT,
    Obsolescence     BIGINT,
    PcntNetCondition BIGINT,
    Condition        BIGINT,
    AddnlCost        BIGINT
);

COPY res_bldg
    FROM '/Users/karenwarmbein/ds/projects/housing_prices_project/data/raw/EXTR_ResBldg.csv'
    DELIMITER ',' CSV HEADER;

DROP TABLE IF EXISTS import_parcel;
CREATE TABLE import_parcel (
    Major TEXT, 
    Minor TEXT, 
    PropName TEXT, 
    PlatName TEXT,
    PlatLot TEXT, 
    PlatBlock TEXT, 
    Rrange BIGINT,
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
    Easements  TEXT,
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
SET client_encoding = 'latin1';
COPY import_parcel
    FROM '/Users/karenwarmbein/ds/projects/housing_prices_project/data/raw/EXTR_Parcel.csv'
    DELIMITER ',' CSV HEADER;
