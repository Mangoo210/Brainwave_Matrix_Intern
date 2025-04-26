library(tidyverse)
library(lubridate)
library(ggplot2)
library(plotly)
library(DT)
library(forecast)

# Load the supermarket sales data (adjust path/filename as needed)
sales_data <- read_csv("C:/Users/pc/Documents/supermarket_sales.csv") %>% 
  # parse Date only once
  mutate(Date = dmy(Date)) %>%
  drop_na() %>%
  # create useful time and financial variables
  mutate(
    month   = month(Date, label = TRUE, abbr = FALSE),
    quarter = quarter(Date),
    year    = year(Date),
    revenue = Quantity * Unit_price,
  )

# Summaries by branch and product line
sales_by_branch  <- sales_data %>% 
  group_by(Branch) %>%
  summarise(Total_Sales = sum(Total), .groups = "drop")
sales_by_product <- sales_data %>% group_by(Product_line)    %>% summarise(Total_Sales = sum(Total), .groups = "drop") %>% arrange(desc(Total_Sales))

# Summarize total sales by city
sales_by_city <- sales_data %>%
  group_by(City) %>%
  summarise(Total_Sales = sum(Total), .groups = "drop")

# Summarize total sales by payment method
sales_by_payment <- sales_data %>%
  group_by(Payment) %>%
  summarise(Total_Sales = sum(Total), .groups = "drop") %>%
  mutate(Percentage = Total_Sales / sum(Total_Sales) * 100,
         Label = paste0(Payment, " (", round(Percentage, 1), "%)"))

# Monthly sales trend
monthly_sales <- sales_data %>% 
  mutate(MonthStart = floor_date(Date, "month")) %>%
  group_by(MonthStart) %>%
  summarise(Monthly_Sales = sum(Total, na.rm = TRUE), .groups = "drop")

# Plot: total sales by branch
ggplot(sales_by_branch, aes(x = Branch, y = Total_Sales, fill = Branch)) +
  geom_col() +
  theme_minimal() +
  labs(title = "Total Sales by Branch", x = "Branch", y = "Sales")

# Plot: total sales by product line
ggplot(sales_by_product, aes(x = reorder(Product_line, Total_Sales), y = Total_Sales, fill = Product_line)) +
  geom_col() +
  coord_flip() +
  theme_minimal() +
  labs(title = "Total Sales by Product Line", x = "Product Line", y = "Sales")

# Plot: monthly sales trend
ggplot(monthly_sales, aes(x = MonthStart, y = Monthly_Sales)) +
  geom_line(linewidth = 1.2) +
  geom_point() +
  theme_minimal() +
  labs(title = "Monthly Sales Trend 2019", x = "Month", y = "Sales")

# Plot: total sales by city
ggplot(sales_by_city, aes(x = reorder(City, Total_Sales), y = Total_Sales, fill = City)) +
  geom_col() +
  coord_flip() +
  theme_minimal() +
  labs(title = "Total Sales by City", x = "City", y = "Sales")

# plot: Sales Distribution by Payment Method
ggplot(sales_by_payment, aes(x = "", y = Total_Sales, fill = Payment)) +
  geom_col(width = 1, color = "white") +
  coord_polar(theta = "y") +
  theme_void() +
  labs(title = "Sales Distribution by Payment Method") +
  geom_text(aes(label = Label), position = position_stack(vjust = 0.5), size = 4)