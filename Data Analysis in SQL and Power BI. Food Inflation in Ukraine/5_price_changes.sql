-- Calculating the change in food prices by region in comparison to the previous year

CREATE TABLE fp AS
SELECT product_type, region, "2018-M01","2018-M02","2018-M03","2018-M04","2018-M05","2018-M06","2018-M07","2018-M08","2018-M09","2018-M10","2018-M11","2018-M12","2019-M01","2019-M02","2019-M03","2019-M04","2019-M05","2019-M06","2019-M07","2019-M08","2019-M09","2019-M10","2019-M11","2019-M12","2020-M01","2020-M02","2020-M03","2020-M04","2020-M05","2020-M06","2020-M07","2020-M08","2020-M09","2020-M10","2020-M11","2020-M12","2021-M01","2021-M02","2021-M03","2021-M04","2021-M05","2021-M06","2021-M07","2021-M08","2021-M09","2021-M10","2021-M11","2021-M12","2022-M01","2022-M02","2022-M03","2022-M04","2022-M05","2022-M06","2022-M07","2022-M08","2022-M09","2022-M10","2022-M11","2022-M12","2023-M01","2023-M02","2023-M03","2023-M04","2023-M05","2023-M06","2023-M07","2023-M08","2023-M09","2023-M10","2023-M11","2023-M12","2024-M01","2024-M02","2024-M03","2024-M04","2024-M05","2024-M06","2024-M07","2024-M08","2024-M09","2024-M10","2024-M11","2024-M12","2025-M01","2025-M02","2025-M03","2025-M04","2025-M05","2025-M06"
FROM consumer_prices
WHERE indicator = 'average_prices' AND 
	  region <> 'Ukraine' AND
	  product_type IN ('Rice', 'Wheat bread from premium flour', 'Wheat bread from first-grade flour', 'Rye and rye-wheat bread', 'Bread loaf', 'Pasta from soft wheat', 'Wheat flour', 'Semolina', 'Buckwheat groats', 'Barley groats', 'Wheat groats', 'Millet', 'Pork', 'Beef', 'Chicken fillet', 'Poultry (chicken carcasses)', 'Frozen fish', 'Boiled sausages', 'Pasteurized milk (up to 2.6% fat)', 'Soft fatty cheeses', 'Sour cream (up to 15% fat)', 'Eggs', 'Pork fat (salo)', 'Sunflower oil', 'Butter', 'Apples', 'Onions', 'White cabbage', 'Beetroot', 'Carrots', 'Potatoes', 'Sugar', 'Domestic beer brands', 'Vodka', 'Domestic table wines')    
 
CREATE TABLE food_prices AS
SELECT product_type, region, '2018-M01' AS date, "2018-M01" AS price FROM fp UNION ALL
SELECT product_type, region, '2018-M02', "2018-M02" FROM fp UNION ALL
SELECT product_type, region, '2018-M03', "2018-M03" FROM fp UNION ALL
SELECT product_type, region, '2018-M04', "2018-M04" FROM fp UNION ALL
SELECT product_type, region, '2018-M05', "2018-M05" FROM fp UNION ALL
SELECT product_type, region, '2018-M06', "2018-M06" FROM fp UNION ALL
SELECT product_type, region, '2018-M07', "2018-M07" FROM fp UNION ALL
SELECT product_type, region, '2018-M08', "2018-M08" FROM fp UNION ALL
SELECT product_type, region, '2018-M09', "2018-M09" FROM fp UNION ALL
SELECT product_type, region, '2018-M10', "2018-M10" FROM fp UNION ALL
SELECT product_type, region, '2018-M11', "2018-M11" FROM fp UNION ALL
SELECT product_type, region, '2018-M12', "2018-M12" FROM fp UNION ALL
SELECT product_type, region, '2019-M01', "2019-M01" FROM fp UNION ALL
SELECT product_type, region, '2019-M02', "2019-M02" FROM fp UNION ALL
SELECT product_type, region, '2019-M03', "2019-M03" FROM fp UNION ALL
SELECT product_type, region, '2019-M04', "2019-M04" FROM fp UNION ALL
SELECT product_type, region, '2019-M05', "2019-M05" FROM fp UNION ALL
SELECT product_type, region, '2019-M06', "2019-M06" FROM fp UNION ALL
SELECT product_type, region, '2019-M07', "2019-M07" FROM fp UNION ALL
SELECT product_type, region, '2019-M08', "2019-M08" FROM fp UNION ALL
SELECT product_type, region, '2019-M09', "2019-M09" FROM fp UNION ALL
SELECT product_type, region, '2019-M10', "2019-M10" FROM fp UNION ALL
SELECT product_type, region, '2019-M11', "2019-M11" FROM fp UNION ALL
SELECT product_type, region, '2019-M12', "2019-M12" FROM fp UNION ALL
SELECT product_type, region, '2020-M01', "2020-M01" FROM fp UNION ALL
SELECT product_type, region, '2020-M02', "2020-M02" FROM fp UNION ALL
SELECT product_type, region, '2020-M03', "2020-M03" FROM fp UNION ALL
SELECT product_type, region, '2020-M04', "2020-M04" FROM fp UNION ALL
SELECT product_type, region, '2020-M05', "2020-M05" FROM fp UNION ALL
SELECT product_type, region, '2020-M06', "2020-M06" FROM fp UNION ALL
SELECT product_type, region, '2020-M07', "2020-M07" FROM fp UNION ALL
SELECT product_type, region, '2020-M08', "2020-M08" FROM fp UNION ALL
SELECT product_type, region, '2020-M09', "2020-M09" FROM fp UNION ALL
SELECT product_type, region, '2020-M10', "2020-M10" FROM fp UNION ALL
SELECT product_type, region, '2020-M11', "2020-M11" FROM fp UNION ALL
SELECT product_type, region, '2020-M12', "2020-M12" FROM fp UNION ALL
SELECT product_type, region, '2021-M01', "2021-M01" FROM fp UNION ALL
SELECT product_type, region, '2021-M02', "2021-M02" FROM fp UNION ALL
SELECT product_type, region, '2021-M03', "2021-M03" FROM fp UNION ALL
SELECT product_type, region, '2021-M04', "2021-M04" FROM fp UNION ALL
SELECT product_type, region, '2021-M05', "2021-M05" FROM fp UNION ALL
SELECT product_type, region, '2021-M06', "2021-M06" FROM fp UNION ALL
SELECT product_type, region, '2021-M07', "2021-M07" FROM fp UNION ALL
SELECT product_type, region, '2021-M08', "2021-M08" FROM fp UNION ALL
SELECT product_type, region, '2021-M09', "2021-M09" FROM fp UNION ALL
SELECT product_type, region, '2021-M10', "2021-M10" FROM fp UNION ALL
SELECT product_type, region, '2021-M11', "2021-M11" FROM fp UNION ALL
SELECT product_type, region, '2021-M12', "2021-M12" FROM fp UNION ALL
SELECT product_type, region, '2022-M01', "2022-M01" FROM fp UNION ALL
SELECT product_type, region, '2022-M02', "2022-M02" FROM fp UNION ALL
SELECT product_type, region, '2022-M03', "2022-M03" FROM fp UNION ALL
SELECT product_type, region, '2022-M04', "2022-M04" FROM fp UNION ALL
SELECT product_type, region, '2022-M05', "2022-M05" FROM fp UNION ALL
SELECT product_type, region, '2022-M06', "2022-M06" FROM fp UNION ALL
SELECT product_type, region, '2022-M07', "2022-M07" FROM fp UNION ALL
SELECT product_type, region, '2022-M08', "2022-M08" FROM fp UNION ALL
SELECT product_type, region, '2022-M09', "2022-M09" FROM fp UNION ALL
SELECT product_type, region, '2022-M10', "2022-M10" FROM fp UNION ALL
SELECT product_type, region, '2022-M11', "2022-M11" FROM fp UNION ALL
SELECT product_type, region, '2022-M12', "2022-M12" FROM fp UNION ALL
SELECT product_type, region, '2023-M01', "2023-M01" FROM fp UNION ALL
SELECT product_type, region, '2023-M02', "2023-M02" FROM fp UNION ALL
SELECT product_type, region, '2023-M03', "2023-M03" FROM fp UNION ALL
SELECT product_type, region, '2023-M04', "2023-M04" FROM fp UNION ALL
SELECT product_type, region, '2023-M05', "2023-M05" FROM fp UNION ALL
SELECT product_type, region, '2023-M06', "2023-M06" FROM fp UNION ALL
SELECT product_type, region, '2023-M07', "2023-M07" FROM fp UNION ALL
SELECT product_type, region, '2023-M08', "2023-M08" FROM fp UNION ALL
SELECT product_type, region, '2023-M09', "2023-M09" FROM fp UNION ALL
SELECT product_type, region, '2023-M10', "2023-M10" FROM fp UNION ALL
SELECT product_type, region, '2023-M11', "2023-M11" FROM fp UNION ALL
SELECT product_type, region, '2023-M12', "2023-M12" FROM fp UNION ALL
SELECT product_type, region, '2024-M01', "2024-M01" FROM fp UNION ALL
SELECT product_type, region, '2024-M02', "2024-M02" FROM fp UNION ALL
SELECT product_type, region, '2024-M03', "2024-M03" FROM fp UNION ALL
SELECT product_type, region, '2024-M04', "2024-M04" FROM fp UNION ALL
SELECT product_type, region, '2024-M05', "2024-M05" FROM fp UNION ALL
SELECT product_type, region, '2024-M06', "2024-M06" FROM fp UNION ALL
SELECT product_type, region, '2024-M07', "2024-M07" FROM fp UNION ALL
SELECT product_type, region, '2024-M08', "2024-M08" FROM fp UNION ALL
SELECT product_type, region, '2024-M09', "2024-M09" FROM fp UNION ALL
SELECT product_type, region, '2024-M10', "2024-M10" FROM fp UNION ALL
SELECT product_type, region, '2024-M11', "2024-M11" FROM fp UNION ALL
SELECT product_type, region, '2024-M12', "2024-M12" FROM fp UNION ALL
SELECT product_type, region, '2025-M01', "2025-M01" FROM fp UNION ALL
SELECT product_type, region, '2025-M02', "2025-M02" FROM fp UNION ALL
SELECT product_type, region, '2025-M03', "2025-M03" FROM fp UNION ALL
SELECT product_type, region, '2025-M04', "2025-M04" FROM fp UNION ALL
SELECT product_type, region, '2025-M05', "2025-M05" FROM fp UNION ALL
SELECT product_type, region, '2025-M06', "2025-M06" FROM fp;

ALTER TABLE food_prices ADD COLUMN year NUMERIC;
UPDATE food_prices
SET year = LEFT(date, 4)::NUMERIC;

ALTER TABLE food_prices ADD COLUMN month NUMERIC;
UPDATE food_prices
SET month = RIGHT(date, 2)::NUMERIC;


-- Identifying products with the highest and lowest percentage price changes

CREATE VIEW fp_agg AS 
SELECT product_type, year, region, AVG(price) as avg_price
FROM food_prices
GROUP BY product_type, year
ORDER BY product_type, year;

CREATE TABLE food_prices_growth AS
SELECT product_type, year, avg_price_gr,
	   LAG(avg_price_gr) OVER(PARTITION BY product_type ORDER BY year) AS prev_price,
	   ROUND((avg_price_gr - LAG(avg_price_gr) OVER (PARTITION BY product_type ORDER BY year)) / LAG(avg_price_gr) OVER (PARTITION BY product_type ORDER BY year) * 100, 2) AS yoy_change
FROM (SELECT product_type, year, AVG(avg_price) AS avg_price_gr
	 FROM fp_agg
	 GROUP BY year, product_type);

CREATE VIEW highest_yoy AS
SELECT product_type, year, yoy_change
FROM food_prices_growth 
WHERE yoy_change IS NOT NULL
ORDER BY yoy_change DESC;

CREATE VIEW lowest_yoy AS
SELECT product_type, year, yoy_change
FROM food_prices_growth 
WHERE yoy_change IS NOT NULL
ORDER BY yoy_change ASC;


-- Calculating standard deviation of prices to indentify the products with highest and lowest prices volatility

CREATE VIEW volatility AS
SELECT product_type AS type,
       STDDEV(avg_price_gr) AS std_dev_volatility
FROM food_prices_growth
GROUP BY product_type
ORDER BY std_dev_volatility DESC;

