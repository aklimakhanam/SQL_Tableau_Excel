# NYC School Bus Breakdown & Delay Analysis

**Type:** Independent Project | **Tools:** Excel (PivotTables, PivotCharts) | **Year:** 2025

## Scenario
Acting as a Data Analyst for the NYC Division of Transportation, the goal was to analyze school bus breakdown and delay records to identify patterns and factors contributing to service disruptions, and to surface recommendations for improving reliability.

## Dataset
~282,000 school bus breakdown/delay records spanning four school years (2019-2020 through 2022-2023), covering bus company, borough, run type, delay reason, delay duration, and day/time of occurrence.

## Key Questions
1. What are the most common reasons for delays and breakdowns?
2. How do delay times vary by bus company and borough?
3. Is there a correlation between specific days of the week and the frequency of breakdowns or delays?

## Approach
- Cleaned and standardized raw data (deduplicated bus company name variants, parsed delay-time ranges into numeric short/long estimates, extracted day-of-week from occurrence timestamps).
- Built PivotTables and PivotCharts to break down delay/breakdown counts by reason, average delay time by bus company and borough, and incident volume by day of week.

## Key Findings
- **Delay reasons:** Heavy Traffic and Mechanical Problems are the leading causes of breakdowns and running-late incidents, followed by "Won't Start" and Flat Tire issues.
- **By company/borough:** Average delay times vary meaningfully by carrier (from ~45 min up to ~60+ min for the slowest companies) and by borough (Connecticut and Bronx routes show the shortest average delays; Queens and Staten Island routes run longest).
- **By day of week:** Incident volume is fairly consistent Monday through Thursday (~52,000-55,000 incidents each) and drops off on Fridays (~49,500), suggesting a mild weekly pattern rather than a single outlier day.

## Recommendations
- Cross-reference the highest-delay bus companies against total trip volume and borough to isolate whether delays are company-driven (e.g., maintenance issues) or route/traffic-driven.
- Prioritize maintenance review for carriers with consistently high average delay times as a potential root cause of recurring mechanical breakdowns.

## Link
[Project files on GitHub](https://github.com/aklimakhanam/SQL_Tableau_Excel/tree/main/NYC_Public_Transport_Dataset)
