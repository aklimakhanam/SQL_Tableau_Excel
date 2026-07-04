# U.S. Public Debt Analysis and Forecasting

**Type:** Independent Project | **Tools:** Excel (PivotTables, PivotCharts, FORECAST function) | **Year:** 2025

## Scenario
Acting as an analyst for a debt research agency, the goal was to analyze U.S. public and governmental debt (1993-2023) to answer specific questions about yearly growth, seasonal patterns, and projected future debt levels, using the Treasury's Debt Held by the Public, Intragovernmental Holdings, and Total Public Debt Outstanding series.

## Dataset
Daily U.S. Treasury debt records from 1993 to February 2023 (~30 years), covering three debt series: Debt Held by the Public, Intragovernmental Holdings, and Total Public Debt Outstanding.

## Key Questions
1. What was the yearly debt percentage increase for each year compared to the previous year?
2. Which months historically have seen the highest/lowest increases in total debt?
3. What is the projected growth of publicly held debt in the next few years?

## Approach
- Cleaned and structured 30 years of daily debt records, calculating year-over-year percentage change for each debt series.
- Built a month-of-year PivotTable/PivotChart to identify seasonal patterns in average total debt.
- Applied Excel's FORECAST function to max-per-year debt-held-by-the-public figures to project growth through 2027.

## Key Findings
- **Yearly growth:** From 2016-2019, total public debt outstanding grew at an average of roughly 5% per year. In 2020, debt spiked sharply, consistent with the scale of the U.S. pandemic fiscal response.
- **Seasonality:** Debt increases are historically highest in January, February, November, and December, and lowest in April, May, June, and July. Hypothesis: the high months coincide with U.S. holiday spending (Thanksgiving, Christmas, New Year's), while the low months see less discretionary borrowing.
- **Long-term trend:** Publicly held debt grew from roughly $1 trillion (1997-2007) to $6-17 trillion (2008-2019), then to $21.5-25 trillion (2020-2022). Based on a FORECAST projection, publicly held debt is projected to reach approximately $33 trillion by 2027, continuing at a steady projected growth rate.

## Ideas for Further Research
Stock market performance, housing market trends, credit card purchase volume, and unemployment rates as potential correlates of debt growth patterns.

## Link
[Project files on GitHub](https://github.com/aklimakhanam/SQL_Tableau_Excel/tree/main/US_Debt_Tracker_Dataset)
