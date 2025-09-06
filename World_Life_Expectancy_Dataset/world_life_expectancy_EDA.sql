# EDA on World Life Expectancy Data

# Q1: How the life expectancy evolved from 2007 to 2022 for each countries

SELECT * 
FROM world_life_expectancy
;

SELECT Country, MIN(`Life expectancy`), 
MAX(`Life expectancy`),
ROUND(MAX(`Life expectancy`) - MIN(`Life expectancy`), 1) AS Life_Increase_15_Years
FROM world_life_expectancy
GROUP BY Country
HAVING MIN(`Life expectancy`) <> 0
AND MAX(`Life expectancy`) <> 0
ORDER BY Life_Increase_15_Years DESC
;

# Q2: How the average life expectancy evolved each year over the world
# A2: Increased by around 5 years

SELECT *
FROM world_life_expectancy
;

SELECT Year, ROUND(AVG(`Life expectancy`), 2) 
FROM world_life_expectancy
WHERE `Life expectancy` <> 0
AND `Life expectancy` <> 0
GROUP BY Year
ORDER BY Year ASC
;

# Q3: Is there any correlation between life expectancy and GDP? 
# A3: Yes, the lower the GDP, the lower the life expectancy

SELECT *
FROM world_life_expectancy
;

SELECT Country, ROUND(AVG(`Life expectancy`), 1) AS Life_Exp, ROUND(AVG(GDP), 1) As GDP
FROM world_life_expectancy
GROUP BY Country
HAVING Life_Exp > 0
AND GDP > 0
ORDER BY GDP ASC
;

SELECT Country, ROUND(AVG(`Life expectancy`), 1) AS Life_Exp, ROUND(AVG(GDP), 1) As GDP
FROM world_life_expectancy
GROUP BY Country
HAVING Life_Exp > 0
AND GDP > 0
ORDER BY GDP DESC
;

SELECT *
FROM world_life_expectancy
ORDER BY GDP 
;

ALTER TABLE world_life_expectancy
MODIFY COLUMN Measles INT 
;

ALTER TABLE world_life_expectancy
MODIFY COLUMN `percentage expenditure` DOUBLE 
;

SELECT 
SUM(CASE
	WHEN GDP >= 1500 THEN 1 # estimated median
	ELSE 0 
END) High_GDP_Count
FROM world_life_expectancy
;

SELECT 
SUM(CASE WHEN GDP >= 1175 THEN 1 ELSE 0 END) High_GDP_Count,
AVG(CASE WHEN GDP >= 1175 THEN `Life expectancy` ELSE NULL END) High_GDP_Life_Expectancy,
SUM(CASE WHEN GDP <= 1175 THEN 1 ELSE 0 END) Low_GDP_Count,
AVG(CASE WHEN GDP <= 1175 THEN `Life expectancy` ELSE NULL END) LOW_GDP_Life_Expectancy
FROM world_life_expectancy
;

# Q4: Is there any correlation between life expectancy and status? 
# A4: Yes, developed countries have higher life expectacy

SELECT *
FROM world_life_expectancy
;

SELECT Status, ROUND(AVG(`Life expectancy`), 1)
FROM world_life_expectancy
GROUP BY Status
;

SELECT Status, COUNT(DISTINCT Country), ROUND(AVG(`Life expectancy`), 1)
FROM world_life_expectancy
GROUP BY Status
;

# Q5: Is there any correlation between life expectancy and BMI? 

SELECT Country, ROUND(AVG(`Life expectancy`), 1) AS Life_Exp, ROUND(AVG(BMI), 1) As BMI
FROM world_life_expectancy
GROUP BY Country
HAVING Life_Exp > 0
AND BMI > 0
ORDER BY BMI DESC
;

# Q5: How many people are dying each year vs life expectancy

SELECT Country,
Year,
`Life expectancy`,
`Adult Mortality`,
SUM(`Adult Mortality`) OVER(PARTITION BY COUNTRY ORDER BY YEAR) AS Rolling_Total
FROM world_life_expectancy
WHERE Country LIKE '%United%'
;




