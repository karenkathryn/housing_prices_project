/*
    Author:     Yu Fen Lin
    Date:       Dec 4, 2019
    Purpose:    Join price, building, and parcel table of residential
                of King County in 2018                
    Note: TODO: 
*/

SELECT sales.*, building.*, parcel.*
-- SELECT COUNT(*)
FROM real_property_sales AS sales
INNER JOIN parcel
USING (major, minor)
INNER JOIN residential_building AS building
ON (sales.major = (CAST(building.major AS TEXT)))
    AND (sales.minor = (CAST(building.minor AS TEXT)))
WHERE sales.saleprice > 0 -- Exclude sale price equal 0
    -- AND (sales.PropertyType = 4 OR sales.PropertyType = 9 OR (sales.PropertyType >= 11 AND sales.PropertyType <= 15) OR sales.PropertyType = 18 OR sales.PropertyType = 19 OR  sales.PropertyType = 59)
    AND sales.documentdate LIKE '%2018' -- sale document in 2018
    AND sales.PrincipalUse = 6 -- Principal Use is residential
    AND building.ZipCode != '' -- Exclude zip code is empty
;

-- ON (CAST(a.Major AS BIGINT) = CAST(b.Major AS BIGINT))
-- AND (CAST(a.Minor AS BIGINT) = CAST(b.Minor AS BIGINT))