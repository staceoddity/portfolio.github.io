-- Calculating Borshch Index. Step 1 - extracting the average monthly prices of the ingredients into a separate table

CREATE TABLE borsch_prices_ing AS
SELECT product_type, "2017-M01","2017-M02","2017-M03","2017-M04","2017-M05","2017-M06","2017-M07","2017-M08","2017-M09","2017-M10","2017-M11","2017-M12","2018-M01","2018-M02","2018-M03","2018-M04","2018-M05","2018-M06","2018-M07","2018-M08","2018-M09","2018-M10","2018-M11","2018-M12","2019-M01","2019-M02","2019-M03","2019-M04","2019-M05","2019-M06","2019-M07","2019-M08","2019-M09","2019-M10","2019-M11","2019-M12","2020-M01","2020-M02","2020-M03","2020-M04","2020-M05","2020-M06","2020-M07","2020-M08","2020-M09","2020-M10","2020-M11","2020-M12","2021-M01","2021-M02","2021-M03","2021-M04","2021-M05","2021-M06","2021-M07","2021-M08","2021-M09","2021-M10","2021-M11","2021-M12","2022-M01","2022-M02","2022-M03","2022-M04","2022-M05","2022-M06","2022-M07","2022-M08","2022-M09","2022-M10","2022-M11","2022-M12","2023-M01","2023-M02","2023-M03","2023-M04","2023-M05","2023-M06","2023-M07","2023-M08","2023-M09","2023-M10","2023-M11","2023-M12","2024-M01","2024-M02","2024-M03","2024-M04","2024-M05","2024-M06","2024-M07","2024-M08","2024-M09","2024-M10","2024-M11","2024-M12","2025-M01","2025-M02","2025-M03","2025-M04","2025-M05","2025-M06"
FROM consumer_prices
WHERE indicator = 'average_prices'
	  AND region = 'Ukraine'
	  AND product_type IN ('Pork', 'Beetroot', 'Potatoes', 'White cabbage', 'Carrots', 'Onions', 'Sunflower oil');


-- Calculating Borshch Index. Steps 2 & 3 - Transposing, so the borsch ingredients become columns, and dates go in rows & splitting the date into years and months

CREATE TABLE b_i AS
SELECT LEFT(date, 4) AS year, 
	   (CASE WHEN RIGHT(date, 2) = '01' THEN 'January'
	   		 WHEN RIGHT(date, 2) = '02' THEN 'February'
			 WHEN RIGHT(date, 2) = '03' THEN 'March'
			 WHEN RIGHT(date, 2) = '04' THEN 'April'
			 WHEN RIGHT(date, 2) = '05' THEN 'May'
			 WHEN RIGHT(date, 2) = '06' THEN 'June'
			 WHEN RIGHT(date, 2) = '07' THEN 'July'
			 WHEN RIGHT(date, 2) = '08' THEN 'August'
			 WHEN RIGHT(date, 2) = '09' THEN 'September'
			 WHEN RIGHT(date, 2) = '10' THEN 'October'
			 WHEN RIGHT(date, 2) = '11' THEN 'November'
			 WHEN RIGHT(date, 2) = '12' THEN 'December'
			 ELSE NULL END) AS month,
	   pork, sunflower_oil, potatoes, onions, cabbage, beetroot, carrots
	  FROM (SELECT
  date,
  MAX(CASE WHEN product_type = 'Pork' THEN price END) AS pork,
  MAX(CASE WHEN product_type = 'Sunflower oil' THEN price END) AS sunflower_oil,
  MAX(CASE WHEN product_type = 'Potatoes' THEN price END) AS potatoes,
  MAX(CASE WHEN product_type = 'Onions' THEN price END) AS onions,
  MAX(CASE WHEN product_type = 'White cabbage' THEN price END) AS cabbage,
  MAX(CASE WHEN product_type = 'Beetroot' THEN price END) AS beetroot,
  MAX(CASE WHEN product_type = 'Carrots' THEN price END) AS carrots
FROM (
SELECT '2017-M01' AS date, product_type, "2017-M01" AS price FROM borsch_prices_ing
UNION ALL SELECT '2017-M02', product_type, "2017-M02" FROM borsch_prices_ing
UNION ALL SELECT '2017-M03', product_type, "2017-M03" FROM borsch_prices_ing
UNION ALL SELECT '2017-M04', product_type, "2017-M04" FROM borsch_prices_ing
UNION ALL SELECT '2017-M05', product_type, "2017-M05" FROM borsch_prices_ing
UNION ALL SELECT '2017-M06', product_type, "2017-M06" FROM borsch_prices_ing
UNION ALL SELECT '2017-M07', product_type, "2017-M07" FROM borsch_prices_ing
UNION ALL SELECT '2017-M08', product_type, "2017-M08" FROM borsch_prices_ing
UNION ALL SELECT '2017-M09', product_type, "2017-M09" FROM borsch_prices_ing
UNION ALL SELECT '2017-M10', product_type, "2017-M10" FROM borsch_prices_ing
UNION ALL SELECT '2017-M11', product_type, "2017-M11" FROM borsch_prices_ing
UNION ALL SELECT '2017-M12', product_type, "2017-M12" FROM borsch_prices_ing
UNION ALL SELECT '2018-M01', product_type, "2018-M01" FROM borsch_prices_ing
UNION ALL SELECT '2018-M02', product_type, "2018-M02" FROM borsch_prices_ing
UNION ALL SELECT '2018-M03', product_type, "2018-M03" FROM borsch_prices_ing
UNION ALL SELECT '2018-M04', product_type, "2018-M04" FROM borsch_prices_ing
UNION ALL SELECT '2018-M05', product_type, "2018-M05" FROM borsch_prices_ing
UNION ALL SELECT '2018-M06', product_type, "2018-M06" FROM borsch_prices_ing
UNION ALL SELECT '2018-M07', product_type, "2018-M07" FROM borsch_prices_ing
UNION ALL SELECT '2018-M08', product_type, "2018-M08" FROM borsch_prices_ing
UNION ALL SELECT '2018-M09', product_type, "2018-M09" FROM borsch_prices_ing
UNION ALL SELECT '2018-M10', product_type, "2018-M10" FROM borsch_prices_ing
UNION ALL SELECT '2018-M11', product_type, "2018-M11" FROM borsch_prices_ing
UNION ALL SELECT '2018-M12', product_type, "2018-M12" FROM borsch_prices_ing
UNION ALL SELECT '2019-M01', product_type, "2019-M01" FROM borsch_prices_ing
UNION ALL SELECT '2019-M02', product_type, "2019-M02" FROM borsch_prices_ing
UNION ALL SELECT '2019-M03', product_type, "2019-M03" FROM borsch_prices_ing
UNION ALL SELECT '2019-M04', product_type, "2019-M04" FROM borsch_prices_ing
UNION ALL SELECT '2019-M05', product_type, "2019-M05" FROM borsch_prices_ing
UNION ALL SELECT '2019-M06', product_type, "2019-M06" FROM borsch_prices_ing
UNION ALL SELECT '2019-M07', product_type, "2019-M07" FROM borsch_prices_ing
UNION ALL SELECT '2019-M08', product_type, "2019-M08" FROM borsch_prices_ing
UNION ALL SELECT '2019-M09', product_type, "2019-M09" FROM borsch_prices_ing
UNION ALL SELECT '2019-M10', product_type, "2019-M10" FROM borsch_prices_ing
UNION ALL SELECT '2019-M11', product_type, "2019-M11" FROM borsch_prices_ing
UNION ALL SELECT '2019-M12', product_type, "2019-M12" FROM borsch_prices_ing
UNION ALL SELECT '2020-M01', product_type, "2020-M01" FROM borsch_prices_ing
UNION ALL SELECT '2020-M02', product_type, "2020-M02" FROM borsch_prices_ing
UNION ALL SELECT '2020-M03', product_type, "2020-M03" FROM borsch_prices_ing
UNION ALL SELECT '2020-M04', product_type, "2020-M04" FROM borsch_prices_ing
UNION ALL SELECT '2020-M05', product_type, "2020-M05" FROM borsch_prices_ing
UNION ALL SELECT '2020-M06', product_type, "2020-M06" FROM borsch_prices_ing
UNION ALL SELECT '2020-M07', product_type, "2020-M07" FROM borsch_prices_ing
UNION ALL SELECT '2020-M08', product_type, "2020-M08" FROM borsch_prices_ing
UNION ALL SELECT '2020-M09', product_type, "2020-M09" FROM borsch_prices_ing
UNION ALL SELECT '2020-M10', product_type, "2020-M10" FROM borsch_prices_ing
UNION ALL SELECT '2020-M11', product_type, "2020-M11" FROM borsch_prices_ing
UNION ALL SELECT '2020-M12', product_type, "2020-M12" FROM borsch_prices_ing
UNION ALL SELECT '2021-M01', product_type, "2021-M01" FROM borsch_prices_ing
UNION ALL SELECT '2021-M02', product_type, "2021-M02" FROM borsch_prices_ing
UNION ALL SELECT '2021-M03', product_type, "2021-M03" FROM borsch_prices_ing
UNION ALL SELECT '2021-M04', product_type, "2021-M04" FROM borsch_prices_ing
UNION ALL SELECT '2021-M05', product_type, "2021-M05" FROM borsch_prices_ing
UNION ALL SELECT '2021-M06', product_type, "2021-M06" FROM borsch_prices_ing
UNION ALL SELECT '2021-M07', product_type, "2021-M07" FROM borsch_prices_ing
UNION ALL SELECT '2021-M08', product_type, "2021-M08" FROM borsch_prices_ing
UNION ALL SELECT '2021-M09', product_type, "2021-M09" FROM borsch_prices_ing
UNION ALL SELECT '2021-M10', product_type, "2021-M10" FROM borsch_prices_ing
UNION ALL SELECT '2021-M11', product_type, "2021-M11" FROM borsch_prices_ing
UNION ALL SELECT '2021-M12', product_type, "2021-M12" FROM borsch_prices_ing
UNION ALL SELECT '2022-M01', product_type, "2022-M01" FROM borsch_prices_ing
UNION ALL SELECT '2022-M02', product_type, "2022-M02" FROM borsch_prices_ing
UNION ALL SELECT '2022-M03', product_type, "2022-M03" FROM borsch_prices_ing
UNION ALL SELECT '2022-M04', product_type, "2022-M04" FROM borsch_prices_ing
UNION ALL SELECT '2022-M05', product_type, "2022-M05" FROM borsch_prices_ing
UNION ALL SELECT '2022-M06', product_type, "2022-M06" FROM borsch_prices_ing
UNION ALL SELECT '2022-M07', product_type, "2022-M07" FROM borsch_prices_ing
UNION ALL SELECT '2022-M08', product_type, "2022-M08" FROM borsch_prices_ing
UNION ALL SELECT '2022-M09', product_type, "2022-M09" FROM borsch_prices_ing
UNION ALL SELECT '2022-M10', product_type, "2022-M10" FROM borsch_prices_ing
UNION ALL SELECT '2022-M11', product_type, "2022-M11" FROM borsch_prices_ing
UNION ALL SELECT '2022-M12', product_type, "2022-M12" FROM borsch_prices_ing
UNION ALL SELECT '2023-M01', product_type, "2023-M01" FROM borsch_prices_ing
UNION ALL SELECT '2023-M02', product_type, "2023-M02" FROM borsch_prices_ing
UNION ALL SELECT '2023-M03', product_type, "2023-M03" FROM borsch_prices_ing
UNION ALL SELECT '2023-M04', product_type, "2023-M04" FROM borsch_prices_ing
UNION ALL SELECT '2023-M05', product_type, "2023-M05" FROM borsch_prices_ing
UNION ALL SELECT '2023-M06', product_type, "2023-M06" FROM borsch_prices_ing
UNION ALL SELECT '2023-M07', product_type, "2023-M07" FROM borsch_prices_ing
UNION ALL SELECT '2023-M08', product_type, "2023-M08" FROM borsch_prices_ing
UNION ALL SELECT '2023-M09', product_type, "2023-M09" FROM borsch_prices_ing
UNION ALL SELECT '2023-M10', product_type, "2023-M10" FROM borsch_prices_ing
UNION ALL SELECT '2023-M11', product_type, "2023-M11" FROM borsch_prices_ing
UNION ALL SELECT '2023-M12', product_type, "2023-M12" FROM borsch_prices_ing
UNION ALL SELECT '2024-M01', product_type, "2024-M01" FROM borsch_prices_ing
UNION ALL SELECT '2024-M02', product_type, "2024-M02" FROM borsch_prices_ing
UNION ALL SELECT '2024-M03', product_type, "2024-M03" FROM borsch_prices_ing
UNION ALL SELECT '2024-M04', product_type, "2024-M04" FROM borsch_prices_ing
UNION ALL SELECT '2024-M05', product_type, "2024-M05" FROM borsch_prices_ing
UNION ALL SELECT '2024-M06', product_type, "2024-M06" FROM borsch_prices_ing
UNION ALL SELECT '2024-M07', product_type, "2024-M07" FROM borsch_prices_ing
UNION ALL SELECT '2024-M08', product_type, "2024-M08" FROM borsch_prices_ing
UNION ALL SELECT '2024-M09', product_type, "2024-M09" FROM borsch_prices_ing
UNION ALL SELECT '2024-M10', product_type, "2024-M10" FROM borsch_prices_ing
UNION ALL SELECT '2024-M11', product_type, "2024-M11" FROM borsch_prices_ing
UNION ALL SELECT '2024-M12', product_type, "2024-M12" FROM borsch_prices_ing
UNION ALL SELECT '2025-M01', product_type, "2025-M01" FROM borsch_prices_ing
UNION ALL SELECT '2025-M02', product_type, "2025-M02" FROM borsch_prices_ing
UNION ALL SELECT '2025-M03', product_type, "2025-M03" FROM borsch_prices_ing
UNION ALL SELECT '2025-M04', product_type, "2025-M04" FROM borsch_prices_ing
UNION ALL SELECT '2025-M05', product_type, "2025-M05" FROM borsch_prices_ing
UNION ALL SELECT '2025-M06', product_type, "2025-M06" FROM borsch_prices_ing)

GROUP BY date
ORDER BY date);
 

-- Calculating Borshch Index. Steps 4 - Adding the data of one missing in the 'consumer_prices' ingredient - tomatoes
-- data source: https://index.minfin.com.ua/ua/markets/wares/prods/fruits-vegetables/vegetables/tomato/

CREATE TABLE tomatoes (
"year" INTEGER, 
"month" TEXT,
"Tomatoes" NUMERIC);

\copy tomatoes FROM 'C:/Users/rns15/Desktop/tomatoes.csv' DELIMITER ';' CSV HEADER;


-- Calculating Borshch Index. Steps 5 - Adding the tomato prices from 'tomatoes' table. There is only data from March 2017, unlike with other ingredients, so I dropped the first two months for all

DELETE FROM b_i 
WHERE year= '2017' AND month IN ('January', 'February');

ALTER TABLE b_i 
ADD COLUMN tomatoes NUMERIC;

UPDATE b_i
SET tomatoes = tomatoes."Tomatoes"
FROM tomatoes
WHERE CAST(b_i.year AS INTEGER) = tomatoes.year and b_i.month = tomatoes.month; 

ALTER TABLE b_i
ALTER COLUMN year TYPE INTEGER
USING year::INTEGER;


-- Calculating Borshch Index. Steps 6 - Final. Calculating the monthly and yearly price of one pot (4-5 litres) of borshch

ALTER TABLE b_i 
ADD COLUMN borshch_index NUMERIC;

UPDATE b_i
SET borshch_index = pork*0.5 + sunflower_oil*0.03 + potatoes*0.5 + onions*0.15 + cabbage*0.5 + beetroot*0.3 + carrots*0.15 + tomatoes*0.3;


-- Creating a table to store borsch indices in UAH and EUR

CREATE TABLE avg_y_bi AS
SELECT year, ROUND(avg_y_bi, 2) AS avg_y_bi_uah, ROUND(avg_y_bi / eur_y_rates.yearly_avg, 2) AS avg_y_bi_eur
FROM (SELECT year, AVG(borshch_index) as avg_y_bi
FROM b_i
WHERE year > 2017
GROUP BY year)
LEFT JOIN eur_y_rates
USING (year)
ORDER BY year;


-- Getting the prices of the borshch ingredients in Euros proportionally to their amount in one pot to illustrate the prices distribution with a donut chart

CREATE TABLE b_ingr_prop_eur AS
SELECT year, ROUND(avg_cabbage / eur_y_rates.yearly_avg * 0.5, 2) AS cabbage_eur,
			 ROUND(avg_pork / eur_y_rates.yearly_avg * 0.5, 2) AS pork_eur,
			 ROUND(avg_sunflower_oil / eur_y_rates.yearly_avg * 0.03, 2) AS sunflower_oil_eur,
			 ROUND(avg_potatoes / eur_y_rates.yearly_avg * 0.5, 2) AS potatoes_eur,
			 ROUND(avg_onions / eur_y_rates.yearly_avg * 0.15, 2) AS onions_eur,
			 ROUND(avg_beetroot / eur_y_rates.yearly_avg * 0.3, 2) AS beetroot_eur,
			 ROUND(avg_carrots / eur_y_rates.yearly_avg * 0.15, 2) AS carrots_eur,
			 ROUND(avg_tomatoes / eur_y_rates.yearly_avg * 0.3, 2) AS tomatoes_eur
FROM (SELECT year, AVG(cabbage) as avg_cabbage, AVG(pork) AS avg_pork, AVG(sunflower_oil) AS avg_sunflower_oil, AVG(potatoes) AS avg_potatoes, AVG(onions) AS avg_onions, AVG(beetroot) AS avg_beetroot, AVG(carrots) AS avg_carrots, AVG(tomatoes) AS avg_tomatoes
FROM b_i
GROUP BY year
ORDER BY year)
LEFT JOIN eur_y_rates
USING(year)
ORDER BY year;