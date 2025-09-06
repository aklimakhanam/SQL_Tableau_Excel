# EDA on US household income dataset

SELECT * 
FROM US_Household_Income
;

SELECT * 
FROM us_household_income_statistics
;

# Q1: Who has the most area of land/water

SELECT * 
FROM US_Household_Income
;

SELECT State_name, County, City, ALand, AWater 
FROM US_Household_Income
;

SELECT State_name, SUM(ALand), SUM(AWater)
FROM US_Household_Income
GROUP BY State_name
ORDER BY 2 DESC
;

SELECT State_name, SUM(ALand), SUM(AWater)
FROM US_Household_Income
GROUP BY State_name
ORDER BY 3 DESC
;

SELECT State_name, SUM(ALand), SUM(AWater)
FROM US_Household_Income
GROUP BY State_name
ORDER BY 2 DESC
LIMIT 10;

SELECT State_name, SUM(ALand), SUM(AWater)
FROM US_Household_Income
GROUP BY State_name
ORDER BY 3 DESC
LIMIT 10;

# Q2: Which state has the higher/lower income

SELECT * 
FROM US_Household_Income
;

SELECT * 
FROM US_Household_Income u
RIGHT JOIN us_household_income_statistics us
	ON u.id = us.id
WHERE u.id IS NULL
;

SELECT * 
FROM US_Household_Income u
INNER JOIN us_household_income_statistics us
	ON u.id = us.id
WHERE Mean <> 0
;

SELECT u.State_name, County, Type, `Primary`, Mean, Median
FROM US_Household_Income u
INNER JOIN us_household_income_statistics us
	ON u.id = us.id
WHERE Mean <> 0
;

SELECT u.State_name, ROUND(AVG(Mean),1), ROUND(AVG(Median),1)
FROM US_Household_Income u
INNER JOIN us_household_income_statistics us
	ON u.id = us.id
WHERE Mean <> 0
GROUP BY u.State_name
ORDER BY 3 ASC
LIMIT 10
;

# Q3: Which area types have the higher/lower income

SELECT * 
FROM US_Household_Income
;

SELECT Type, COUNT(Type), ROUND(AVG(Mean),1), ROUND(AVG(Median),1)
FROM US_Household_Income u
INNER JOIN us_household_income_statistics us
	ON u.id = us.id
WHERE Mean <> 0
GROUP BY Type
ORDER BY 4 DESC
LIMIT 10
;

SELECT * 
FROM US_Household_Income
WHERE Type = 'Community'
;

SELECT Type, COUNT(Type), ROUND(AVG(Mean),1), ROUND(AVG(Median),1)
FROM US_Household_Income u
INNER JOIN us_household_income_statistics us
	ON u.id = us.id
GROUP BY Type
HAVING COUNT(Type) > 100
ORDER BY 4 DESC
LIMIT 10
;

# Q4: Which cities have the higher/lower income

SELECT u.State_name, City, ROUND(AVG(Mean),1), ROUND(AVG(Median),1)
FROM US_Household_Income u
INNER JOIN us_household_income_statistics us
	ON u.id = us.id
GROUP BY u.State_name, City
ORDER BY 3 DESC
;




























