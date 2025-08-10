-- Creating a table to store monthly food CPI (compared to December of the previous year) by region, and calculating the inflation rate

CREATE TABLE food_cpi_y AS
SELECT region, '2018-M01' AS month, "2018-M01"::NUMERIC AS cpi FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2018-M02' AS month, "2018-M02"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine' 
UNION ALL SELECT region, '2018-M03' AS month, "2018-M03"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2018-M04' AS month, "2018-M04"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2018-M05' AS month, "2018-M05"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2018-M06' AS month, "2018-M06"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2018-M07' AS month, "2018-M07"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2018-M08' AS month, "2018-M08"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2018-M09' AS month, "2018-M09"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2018-M10' AS month, "2018-M10"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2018-M11' AS month, "2018-M11"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2018-M12' AS month, "2018-M12"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2019-M01' AS month, "2019-M01"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2019-M02' AS month, "2019-M02"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2019-M03' AS month, "2019-M03"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2019-M04' AS month, "2019-M04"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2019-M05' AS month, "2019-M05"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2019-M06' AS month, "2019-M06"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2019-M07' AS month, "2019-M07"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2019-M08' AS month, "2019-M08"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2019-M09' AS month, "2019-M09"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2019-M10' AS month, "2019-M10"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2019-M11' AS month, "2019-M11"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2019-M12' AS month, "2019-M12"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2020-M01' AS month, "2020-M01"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2020-M02' AS month, "2020-M02"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2020-M03' AS month, "2020-M03"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2020-M04' AS month, "2020-M04"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2020-M05' AS month, "2020-M05"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2020-M06' AS month, "2020-M06"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2020-M07' AS month, "2020-M07"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2020-M08' AS month, "2020-M08"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2020-M09' AS month, "2020-M09"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2020-M10' AS month, "2020-M10"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2020-M11' AS month, "2020-M11"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2020-M12' AS month, "2020-M12"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2021-M01' AS month, "2021-M01"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2021-M02' AS month, "2021-M02"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2021-M03' AS month, "2021-M03"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2021-M04' AS month, "2021-M04"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2021-M05' AS month, "2021-M05"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2021-M06' AS month, "2021-M06"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2021-M07' AS month, "2021-M07"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2021-M08' AS month, "2021-M08"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2021-M09' AS month, "2021-M09"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2021-M10' AS month, "2021-M10"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2021-M11' AS month, "2021-M11"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2021-M12' AS month, "2021-M12"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2022-M01' AS month, "2022-M01"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2022-M02' AS month, "2022-M02"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2022-M03' AS month, "2022-M03"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2022-M04' AS month, "2022-M04"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2022-M05' AS month, "2022-M05"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2022-M06' AS month, "2022-M06"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2022-M07' AS month, "2022-M07"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2022-M08' AS month, "2022-M08"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2022-M09' AS month, "2022-M09"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2022-M10' AS month, "2022-M10"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2022-M11' AS month, "2022-M11"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2022-M12' AS month, "2022-M12"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2023-M01' AS month, "2023-M01"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2023-M02' AS month, "2023-M02"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2023-M03' AS month, "2023-M03"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2023-M04' AS month, "2023-M04"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2023-M05' AS month, "2023-M05"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2023-M06' AS month, "2023-M06"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2023-M07' AS month, "2023-M07"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2023-M08' AS month, "2023-M08"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2023-M09' AS month, "2023-M09"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2023-M10' AS month, "2023-M10"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2023-M11' AS month, "2023-M11"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2023-M12' AS month, "2023-M12"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2024-M01' AS month, "2024-M01"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2024-M02' AS month, "2024-M02"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2024-M03' AS month, "2024-M03"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2024-M04' AS month, "2024-M04"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2024-M05' AS month, "2024-M05"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2024-M06' AS month, "2024-M06"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2024-M07' AS month, "2024-M07"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2024-M08' AS month, "2024-M08"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2024-M09' AS month, "2024-M09"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2024-M10' AS month, "2024-M10"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2024-M11' AS month, "2024-M11"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2024-M12' AS month, "2024-M12"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2025-M01' AS month, "2025-M01"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2025-M02' AS month, "2025-M02"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2025-M03' AS month, "2025-M03"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2025-M04' AS month, "2025-M04"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2025-M05' AS month, "2025-M05"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine'
UNION ALL SELECT region, '2025-M06' AS month, "2025-M06"::NUMERIC FROM consumer_prices WHERE base_period = 'Compared to Dec of prev year' AND product_type = 'Food and non-alcoholic beverages' AND region <> 'Ukraine';

ALTER TABLE food_cpi_y ADD COLUMN "date" TEXT;
UPDATE food_cpi_y
SET "date" = CASE 
    WHEN RIGHT(month, 2) = '01' THEN 'January ' || SUBSTRING(month FROM 1 FOR 4)
    WHEN RIGHT(month, 2) = '02' THEN 'February ' || SUBSTRING(month FROM 1 FOR 4)
    WHEN RIGHT(month, 2) = '03' THEN 'March ' || SUBSTRING(month FROM 1 FOR 4)
    WHEN RIGHT(month, 2) = '04' THEN 'April ' || SUBSTRING(month FROM 1 FOR 4)
    WHEN RIGHT(month, 2) = '05' THEN 'May ' || SUBSTRING(month FROM 1 FOR 4)
    WHEN RIGHT(month, 2) = '06' THEN 'June ' || SUBSTRING(month FROM 1 FOR 4)
    WHEN RIGHT(month, 2) = '07' THEN 'July ' || SUBSTRING(month FROM 1 FOR 4)
    WHEN RIGHT(month, 2) = '08' THEN 'August ' || SUBSTRING(month FROM 1 FOR 4)
    WHEN RIGHT(month, 2) = '09' THEN 'September ' || SUBSTRING(month FROM 1 FOR 4)
    WHEN RIGHT(month, 2) = '10' THEN 'October ' || SUBSTRING(month FROM 1 FOR 4)
    WHEN RIGHT(month, 2) = '11' THEN 'November ' || SUBSTRING(month FROM 1 FOR 4)
    WHEN RIGHT(month, 2) = '12' THEN 'December ' || SUBSTRING(month FROM 1 FOR 4)
    ELSE 'Unknown'
END;

ALTER TABLE food_cpi_y ADD COLUMN "inflation_rate" TEXT;
UPDATE food_cpi_y
SET "inflation_rate" = CASE
    WHEN cpi > 100 THEN '+' || ROUND(cpi - 100, 1)::TEXT || '%'
    WHEN cpi < 100 THEN '-' || ROUND(100 - cpi, 1)::TEXT || '%'
    ELSE 'null' END

ALTER TABLE food_cpi_y ADD COLUMN year NUMERIC;
UPDATE food_cpi_y
SET year = LEFT(month, 4)::NUMERIC;
