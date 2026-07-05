## U.S. Household Income Data Cleaning & Exploratory Analysis (SQL)

### Project Overview
This project applies SQL to clean, validate, and analyze a U.S. household income dataset spanning states, counties, cities, and other geographic area types, joined against a separate income statistics table (mean and median income by location) via a shared ID key. The raw data included duplicate ID records, inconsistent state-name spelling (e.g., lowercase "alabama"), missing "Place" values for certain county/city combinations, and inconsistent area-type labels (e.g., "Boroughs" vs. "Borough"), all of which required correction before the data could be reliably analyzed. The project also includes a data-quality pass on land and water area fields (ALand/AWater) to flag potentially erroneous zero or null values. After cleaning, the analysis joins the cleaned geographic data with income statistics to explore how household income varies by state, county, city, and area type across the U.S.

### Key Questions
1. Which states have the most land area vs. water area?
2. Which states have the higher/lower average household income?
3. Which area types (e.g., city, borough, community) have the higher/lower average income?
4. Which cities have the highest/lowest mean and median household income?

### Key Contributions
- Cleaned and standardized household income datasets by:
  - Removing duplicate records using window functions (e.g. `ROW_NUMBER`)
  - Correcting inconsistent state names and categorical values
  - Populating missing geographic fields using conditional logic
- Validated and inspected land and water area variables to identify potential data quality issues.
- Joined income statistics with geographic household data to enable income-based analysis.
- Performed exploratory data analysis to examine:
  - Land and water area distribution across U.S. states
  - States with the highest and lowest average household income
  - Income differences across area types (e.g., city, borough, community)
  - Cities with the highest and lowest mean and median household income
- Applied aggregations, joins, and filtering to derive meaningful socioeconomic insights.

### Tools & Skills
- SQL (joins, window functions, aggregation, data cleaning)
- Exploratory Data Analysis (EDA)
- Geographic and socioeconomic data analysis
## U.S. Household Income Data Cleaning & Exploratory Analysis (SQL)

### Project Overview
This project focuses on cleaning, validating, and analyzing U.S. household income data using SQL to identify geographic and demographic income patterns across states, counties, and cities.

### Key Contributions
- Cleaned and standardized household income datasets by:
  - Removing duplicate records using window functions (e.g. `ROW_NUMBER`)
  - Correcting inconsistent state names and categorical values
  - Populating missing geographic fields using conditional logic
- Validated and inspected land and water area variables to identify potential data quality issues.
- Joined income statistics with geographic household data to enable income-based analysis.
- Performed exploratory data analysis to examine:
  - Land and water area distribution across U.S. states
  - States with the highest and lowest average household income
  - Income differences across area types (e.g., city, borough, community)
  - Cities with the highest and lowest mean and median household income
- Applied aggregations, joins, and filtering to derive meaningful socioeconomic insights.

### Tools & Skills
- SQL (joins, window functions, aggregation, data cleaning)
- Exploratory Data Analysis (EDA)
- Geographic and socioeconomic data analysis
