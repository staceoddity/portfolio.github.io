-- In the original dataset "consumer prices", the data about the prices is available only starting from 2017 and in Ukrainian currency (UAH) 
-- I created a separate table for EUR to UAH exchange rate from 01.01.2017 till 21.07.2025 to convert the prices into euros to improve the comprehension of the analysis results by general audiences 
-- data source: https://bank.gov.ua/ua/markets/exchangerate-chart?cn%5B%5D=EUR&startDate=01.01.2017&endDate=26.07.2025

CREATE TABLE eurtouah_ex_r (
"Дата" DATE,
"Час" TEXT,
"Код цифровий" NUMERIC,
"Код літерний" TEXT,
"Кількість одиниць" INTEGER,
"Назва валюти" TEXT,
"Офіційний курс гривні, грн" NUMERIC
);

\copy eurtouah_ex_r FROM 'C:/Users/rns15/Desktop/EURtoUAH_exchange_rate.csv' WITH (
  FORMAT csv,
  HEADER true,
  DELIMITER ',',
  ENCODING 'UTF8'
);

ALTER TABLE eurtouah_ex_r ADD COLUMN "ex_r" NUMERIC(12,2);
UPDATE eurtouah_ex_r
SET "ex_r" = CASE
  WHEN "Кількість одиниць" = 100 THEN ROUND("Офіційний курс гривні, грн" / 100, 2)
  WHEN "Кількість одиниць" = 1 THEN ROUND("Офіційний курс гривні, грн", 2)
END;

ALTER TABLE eurtouah_ex_r
DROP COLUMN "Час",
DROP COLUMN "Код цифровий",
DROP COLUMN "Код літерний",
DROP COLUMN "Кількість одиниць",
DROP COLUMN "Назва валюти",
DROP COLUMN "Офіційний курс гривні, грн";

ALTER TABLE eurtouah_ex_r
RENAME COLUMN "Дата" TO "Date";


-- Transforming values and creating tables with average monthly and yearly exchange rates for further joining and transforming prices into the EUR currency

CREATE TABLE eur_m_rates AS 
SELECT 
  EXTRACT(YEAR FROM "Date") AS year,
  EXTRACT(MONTH FROM "Date") AS month,
  ROUND(AVG(ex_r), 2) AS monthly_avg
  FROM eurtouah_ex_r
GROUP BY EXTRACT(YEAR FROM "Date"), EXTRACT(MONTH FROM "Date")
ORDER BY EXTRACT(YEAR FROM "Date"), EXTRACT(MONTH FROM "Date");

CREATE TABLE eur_y_rates as
SELECT 
  year,
  AVG(monthly_avg) as yearly_avg
  FROM eur_m_rates
GROUP BY year
ORDER BY year;


-- Creating a table with average salary to compare the salary growth to the prices growth and converting the values to EUR
-- data source: https://index.minfin.com.ua/ua/labour/salary/average/pfu/

CREATE TABLE avg_salary (
"year" NUMERIC,
"salary" NUMERIC);

INSERT INTO avg_salary ("year", "salary")
VALUES 
  (2017, 6273.45),
  (2018, 7810.88),
  (2019, 9205.19),
  (2020, 10340.35),
  (2021, 12993.56),
  (2022, 13376.21),
  (2023, 14308.46),
  (2024, 17486.60),
  (2025, 19378.36);

CREATE TABLE avg_salary_eur AS
SELECT
   year,
   ROUND(avg_salary.salary / eur_y_rates.yearly_avg, 2) AS salary_eur
FROM avg_salary
LEFT JOIN eur_y_rates
USING (year);