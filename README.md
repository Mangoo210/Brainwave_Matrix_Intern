# Brainwave_Matrix_Intern
# Supermarket Sales Data Analysis

## Project Overview

This project explores and analyzes supermarket sales data to uncover meaningful trends, optimize performance insights, and visualize customer behavior. Using R, we conducted a comprehensive exploratory data analysis (EDA), enhanced with detailed visualizations to support strategic business decisions, particularly around product performance, branch profitability, and customer preferences.

## Features

•	Sales Trend Analysis: Analyzed monthly sales trends across the year 2019 to identify peak revenue periods.

•	Branch & Product Insights: Assessed which branches and product lines contribute the most to total revenue.

•	Payment Method Distribution: Visualized customer payment preferences using a pie chart.

•	City-Level Sales Comparison: Compared sales performance across cities to identify high-performing locations.

Programming Language: R

## Libraries:

•	Data Manipulation & Cleaning: tidyverse, lubridate, dplyr

•	Visualization: ggplot2, plotly

•	Forecasting & Time Series (future expansion): forecast

•	Interactive Tables: DT
## Project Structure
graphql
CopyEdit
project-root/
├── data/            # Contains raw CSV file (supermarket_sales.csv)
├── analysis/        # R scripts for data cleaning, EDA, visualization
├── outputs/         # Rendered plots and charts
├── reports/         # Summary insights and presentation files
Data Sources

•	Primary Dataset: supermarket_sales.csv, containing detailed transactional records such as:

o	Date of purchase

o	Quantity, unit price, and total sale

o	Branch and city information

o	Product line

o	Payment method and customer gender

## Summary of Work Done

1.	Data Cleaning & Preparation:

o	Parsed and standardized the Date column.

o	Created new time-based columns: month, quarter, year.

o	Computed revenue as Quantity × Unit Price.

2.	Data Summarization:

o	Aggregated sales by branch, product line, city, and payment method.

o	Grouped transactions by month to analyze temporal trends.

3.	Visualizations:

o	Bar plots for branch, product line, and city sales comparisons.

o	A line chart for monthly sales trends.

o	A pie chart displaying sales distribution by payment method.

