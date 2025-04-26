# Brainwave_Matrix_Intern
Supermarket Sales Data Analysis
Project Overview
This project explores and analyzes supermarket sales data to uncover meaningful trends, optimize performance insights, and visualize customer behavior. Using R, we conducted a comprehensive exploratory data analysis (EDA), enhanced with detailed visualizations to support strategic business decisions, particularly around product performance, branch profitability, and customer preferences.

Features
Sales Trend Analysis: Analyzed monthly sales trends across the year 2019 to identify peak revenue periods.

Branch & Product Insights: Assessed which branches and product lines contribute the most to total revenue.

Payment Method Distribution: Visualized customer payment preferences using a pie chart.

City-Level Sales Comparison: Compared sales performance across cities to identify high-performing locations.

Technologies Used
Programming Language: R
Libraries:

Data Manipulation & Cleaning: tidyverse, lubridate, dplyr

Visualization: ggplot2, plotly

Forecasting & Time Series (future expansion): forecast

Interactive Tables: DT

Project Structure
graphql
Copy
Edit
project-root/
├── data/            # Contains raw CSV file (supermarket_sales.csv)
├── analysis/        # R scripts for data cleaning, EDA, visualization
├── outputs/         # Rendered plots and charts
├── reports/         # Summary insights and presentation files
Data Sources
Primary Dataset: supermarket_sales.csv, containing detailed transactional records such as:

Date of purchase

Quantity, unit price, and total sale

Branch and city information

Product line

Payment method and customer gender

Summary of Work Done
Data Cleaning & Preparation:

Parsed and standardized the Date column.

Created new time-based columns: month, quarter, year.

Computed revenue as Quantity × Unit Price.

Data Summarization:

Aggregated sales by branch, product line, city, and payment method.

Grouped transactions by month to analyze temporal trends.

Visualizations:

Bar plots for branch, product line, and city sales comparisons.

A line chart for monthly sales trends.

A pie chart displaying sales distribution by payment method.
