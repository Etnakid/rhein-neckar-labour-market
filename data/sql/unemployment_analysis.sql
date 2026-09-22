-- Rhein-Neckar Labour Market Analysis
-- Unemployment analysis with PostgreSQL


-- 1. Average unemployment rate by city

SELECT
    region,
    ROUND(AVG(unemployment_rate), 2) AS avg_unemployment_rate
FROM unemployment
GROUP BY region
ORDER BY avg_unemployment_rate DESC;


-- 2. Average unemployment rate by city and year

SELECT
    region,
    year,
    ROUND(AVG(unemployment_rate), 2) AS avg_unemployment_rate
FROM unemployment
GROUP BY region, year
ORDER BY region, year;


-- 3. Comparison between 2023 and 2025

SELECT
    region,
    year,
    ROUND(AVG(unemployment_rate), 2) AS avg_unemployment_rate
FROM unemployment
WHERE year IN (2023, 2025)
GROUP BY region, year
ORDER BY region, year;


-- 4. Monthly unemployment pattern

SELECT
    month,
    ROUND(AVG(unemployment_rate), 2) AS avg_unemployment_rate
FROM unemployment
GROUP BY month
ORDER BY avg_unemployment_rate DESC;