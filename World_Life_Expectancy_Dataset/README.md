## World Life Expectancy Data Cleaning & Exploratory Analysis (SQL)

### Project Overview
This project focuses on cleaning and analyzing a global life expectancy dataset using SQL to uncover long-term health, economic, and demographic trends across countries.

### Key Contributions
- Removed duplicate country–year records using window functions (`ROW_NUMBER`) to ensure data integrity.
- Identified and populated missing categorical values (e.g., *Developed* vs *Developing*) using self-joins and conditional updates.
- Imputed missing life expectancy values using neighboring-year averages to preserve temporal continuity.
- Conducted exploratory data analysis to examine:
  - Life expectancy changes by country over time
  - Global life expectancy trends from 2007–2022
  - Relationships between life expectancy and GDP, BMI, adult mortality, and development status
- Applied aggregations, window functions, and rolling calculations to quantify correlations and trends.

### Tools & Skills
- SQL (joins, window functions, aggregation, data cleaning)
- Exploratory Data Analysis (EDA)
- Time-series and comparative analysis on real-world public health data
