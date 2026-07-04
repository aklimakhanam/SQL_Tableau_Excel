## World Life Expectancy Data Cleaning & Exploratory Analysis (SQL)

### Project Overview
This project applies SQL to clean, structure, and analyze a real-world global life expectancy dataset covering 193 countries from 2007 to 2022. The raw data included duplicate country-year records, blank development-status labels, and missing life expectancy values, requiring a full data-cleaning pass before any analysis could be trusted. After cleaning, the project moves into exploratory data analysis, examining how life expectancy has changed over time both globally and country-by-country, and testing its relationship against key health and economic indicators: GDP, BMI, adult mortality, and development status (Developed vs. Developing). The goal was to surface patterns that could inform public health and economic development discussions, using only SQL, no external BI or scripting tools, for the entire cleaning-to-insight pipeline.

### Key Questions
1. How did life expectancy evolve from 2007 to 2022 for each country?
2. How did the average life expectancy evolve each year across the world?
3. Is there a correlation between life expectancy and GDP?
4. Is there a correlation between life expectancy and development status (Developed vs. Developing)?
5. Is there a correlation between life expectancy and BMI?
6. How does adult mortality relate to life expectancy over time?

### Key Contributions
- Removed duplicate country–year records using window functions (e.g. `ROW_NUMBER`) to ensure data integrity.
- Identified and populated missing categorical values (e.g., *Developed* vs *Developing*) using self-joins and conditional updates.
- Imputed missing life expectancy values using neighboring-year averages to preserve temporal continuity.
- Conducted exploratory data analysis to examine:
  - Life expectancy changes by country over time
  - Global life expectancy trends from 2007–2022
  - Relationships between life expectancy and GDP, BMI, adult mortality, and development status
- Applied aggregations, window functions, and rolling calculations to quantify correlations and trends.

### Key Findings
- Life expectancy increased globally from 2007 to 2022, with most countries gaining several years; the average global increase is around 5 years.
- Higher GDP is associated with higher life expectancy, with low-GDP countries generally having shorter life expectancies.
- Developed countries have higher average life expectancy than developing countries, reflecting disparities in healthcare and economic development.
- Life expectancy has a nonlinear relationship with BMI: countries with very low BMI (malnutrition) or very high BMI (obesity) often have lower life expectancy, while moderate BMI levels are generally associated with longer life expectancies.
- Higher adult mortality rates correspond to lower life expectancy, with countries showing lower adult mortality generally experiencing longer life expectancies.

### Tools & Skills
- SQL (joins, window functions, aggregation, data cleaning)
- Exploratory Data Analysis (EDA)
- Time-series and comparative analysis on real-world public health data
