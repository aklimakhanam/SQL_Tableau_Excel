USE US_Project;

SELECT * FROM US_Project.USHouseholdIncome;

RENAME TABLE US_Project.USHouseholdIncome TO US_Project.US_Household_Income;

SELECT * 
FROM US_Household_Income
;

SELECT COUNT(id)  
FROM US_Household_Income
;

SELECT * 
FROM us_household_income_statistics
;

SELECT COUNT(id) 
FROM us_household_income_statistics
;

# Removing duplicates

SELECT id, COUNT(id) 
FROM us_household_income
GROUP BY id
HAVING COUNT(id) > 1
;

SELECT *
FROM (
SELECT row_id,
id,
ROW_NUMBER() OVER(PARTITION BY id ORDER BY id) row_num
FROM us_household_income
) duplicates
WHERE row_num > 1
;

DELETE FROM us_household_income
WHERE row_id IN(
	SELECT row_id
	FROM (
		SELECT row_id,
		id,
		ROW_NUMBER() OVER(PARTITION BY id ORDER BY id) row_num
		FROM us_household_income
	) duplicates
	WHERE row_num > 1
)
;

SELECT * 
FROM US_Household_Income
;

SELECT id, COUNT(id) 
FROM us_household_income_statistics
GROUP BY id
HAVING COUNT(id) > 1
;

# Correcting state name's spelling

SELECT State_name, COUNT(State_name) 
FROM US_Household_Income
GROUP BY State_name
;

SELECT DISTINCT State_name
FROM US_Household_Income
GROUP BY State_name
ORDER BY State_name
;

UPDATE US_Household_Income
SET State_name = 'Alabama'
WHERE State_name = 'alabama'
;

# Populating missing data

SELECT DISTINCT State_ab
FROM US_Household_Income
ORDER BY 1
;

SELECT *
FROM US_Household_Income
WHERE Place IS NULL
ORDER BY 1
;

SELECT *
FROM US_Household_Income
WHERE County = 'Autauga County'
AND City = 'Vinemont'
ORDER BY 1
;

SELECT *
FROM US_Household_Income
WHERE Place = 'Autaugaville'
ORDER BY 1
;

UPDATE US_Household_Income
SET Place = 'Autaugaville'
WHERE County = 'Autauga County'
AND City = 'Vinemont'
;

# Correcting data types

SELECT Type, COUNT(Type)
FROM US_Household_Income
GROUP BY Type
;

UPDATE US_Household_Income
SET Type = 'Borough'
WHERE Type = 'Boroughs'
;

# Checking O values for potential errors

SELECT * 
FROM US_Household_Income
;

SELECT ALand, AWater
FROM US_Household_Income
WHERE AWater = 0 OR AWater IS NULL or AWater = ''
;

SELECT DISTINCT AWater
FROM US_Household_Income
WHERE AWater = 0 OR AWater IS NULL or AWater = ''
;

SELECT ALand, AWater
FROM US_Household_Income
WHERE (AWater = 0 OR AWater IS NULL or AWater = '')
AND (ALand = 0 OR ALand IS NULL or ALand = '')
;

SELECT ALand, AWater
FROM US_Household_Income
WHERE (ALand = 0 OR ALand IS NULL or ALand = '')
;












