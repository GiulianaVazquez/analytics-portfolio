/*
RENTAL MARKET DATA ANALYSIS - SQL QUERIES
Author: Giuliana Vazquez
Date: July 2026

Data Source: IPUMS Census Data
Dataset Size: 106,521 renter households across Chicago, NYC, and San Francisco
Time Period: 2015-2019
*/

-- QUERY 1: Average Rent by City and Income
-- Extracts average rent aggregated by city and income level to show how rent varies across cities and income groups

SELECT 
  city,
  income_10k,
  ROUND(AVG(RENTGRS), 2) as avg_monthly_rent,
  ROUND(MIN(RENTGRS), 2) as min_rent,
  ROUND(MAX(RENTGRS), 2) as max_rent,
  COUNT(*) as household_count
FROM rental_data
WHERE RENTGRS > 0 
  AND RENTGRS < 99999
  AND city IS NOT NULL
GROUP BY city, income_10k
ORDER BY city, income_10k DESC;


-- QUERY 2: Rent by Education and Employment
-- Analyze how education and employment status affect rent to show the relationship between demographics and housing costs

SELECT 
  CASE WHEN college = 1 THEN 'College Educated' ELSE 'No College Degree' END as education_level,
  CASE WHEN employed = 1 THEN 'Employed' ELSE 'Unemployed' END as employment_status,
  ROUND(AVG(RENTGRS), 2) as avg_rent,
  ROUND(AVG(ln_rent), 3) as avg_log_rent,
  COUNT(*) as sample_size,
  ROUND(STDDEV(RENTGRS), 2) as rent_std_dev
FROM rental_data
WHERE RENTGRS > 0
  AND college IS NOT NULL
  AND employed IS NOT NULL
GROUP BY college, employed
ORDER BY college DESC, employed DESC;


-- QUERY 3: Rent by Housing Characteristics
-- Analyze rent variation across different housing types and sizes

SELECT 
  city,
  BEDROOMS,
  UNITSSTR as structure_type,
  ROUND(AVG(RENTGRS), 2) as avg_rent,
  COUNT(*) as count,
  ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM rental_data WHERE city IS NOT NULL), 1) as pct_of_market
FROM rental_data
WHERE RENTGRS > 0 
  AND BEDROOMS IS NOT NULL
  AND city IS NOT NULL
GROUP BY city, BEDROOMS, UNITSSTR
ORDER BY city, BEDROOMS DESC, avg_rent DESC;

-- QUERY 4: Year-over-Year Rent Trends by Geography
-- Track how rent changes over time in different cities

SELECT 
  YEAR,
  city,
  puma_id,
  ROUND(AVG(RENTGRS), 2) as avg_rent,
  ROUND(AVG(income_10k) * 10000, 0) as avg_income,
  COUNT(*) as households_sampled,
  ROUND(AVG(BEDROOMS), 1) as avg_bedrooms
FROM rental_data
WHERE RENTGRS > 0 
  AND city IS NOT NULL
  AND YEAR IS NOT NULL
GROUP BY YEAR, city, puma_id
ORDER BY YEAR DESC, city, avg_rent DESC;
