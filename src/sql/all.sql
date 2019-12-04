/*
    Author:     Karen Warmbein 
    Date:       Dec. 3, 2019
    Purpose:    Create SQL table from csv                 
    Note: TODO: 
*/
DROP TABLE IF EXISTS housing_data;
CREATE TABLE housing_data AS (
    SELECT 
        -- -- COUNT(*)
        a.DocumentDate AS doc_date,
        a.Major, 
        a.Minor, 
        a.SalePrice, 
        b.SqFtOpenPorch,
        b.SqFtEnclosedPorch,
        b.SqFtTotLiving,
        b.YrBuilt,
        CASE WHEN b.YrRenovated != 0
            THEN 2019 - b.YrRenovated
            ELSE 0
            END AS years_ren_ago,
        b.Bedrooms,
        b.NbrLivingUnits,
        b.DirectionPrefix,
        b.SqFtGarageAttached,
        b.BrickStone,
        b.BathFullCount,
        c.WfntLocation,
        c.TrafficNoise,
        c.AirportNoise,
        CASE WHEN c.PowerLines = 'Y'
            THEN '1'
            ELSE '0'
            END AS powerlines,
        -- c.WfntFootage,
        -- c.WfntBank,
        -- c.WfntPoorQuality,
        -- c.WfntRestrictedAccess,
        -- c.WfntAccessRights,
        -- c.WfntProximityInfluence,
        CASE WHEN (b.SqFtOpenPorch > 0 or b.SqFtEnclosedPorch > 0)
            THEN '1'
            ELSE '0'
            END AS porch,
        c.Contamination
    FROM property_sale AS a
    JOIN res_bldg AS b
    ON (CAST(a.Major AS BIGINT) = CAST(b.Major AS BIGINT))
        AND (CAST(a.Minor AS BIGINT) = CAST(b.Minor AS BIGINT))
    JOIN import_parcel AS c
    ON (CAST(a.Major AS BIGINT) = CAST(c.Major AS BIGINT))
        AND (CAST(a.Minor AS BIGINT) = CAST(c.Minor AS BIGINT))
    WHERE a.SalePrice > 0 
        AND ((a.PropertyType >= 11) AND (a.PropertyType <= 15)
        OR (a.PropertyType = 18) 
        OR (a.PropertyType = 19)
        OR (a.PropertyType = 4)
        OR (a.PropertyType = 9)
        OR (a.PropertyType = 59))
        AND (a.DocumentDate LIKE '%2018')
);