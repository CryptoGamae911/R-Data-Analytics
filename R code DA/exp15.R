# Load necessary libraries
library(dplyr)
library(ggplot2)

# (i) Load the dataset and display first few rows
sales_data <- read.csv("sales_data.csv", stringsAsFactors = FALSE)
cat("First few rows of sales_data:\n")
print(head(sales_data))

# Ensure Date column is in Date format
sales_data$Date <- as.Date(sales_data$Date)

# (ii) Calculate total sales revenue for each product (Price * Quantity)
sales_data <- sales_data %>%
  mutate(TotalRevenue = Price * Quantity)

total_revenue_per_product <- sales_data %>%
  group_by(Product) %>%
  summarise(TotalRevenue = sum(TotalRevenue))

cat("\nTotal sales revenue per product:\n")
print(total_revenue_per_product)

# (iii) Plot histogram of the distribution of sales prices
ggplot(sales_data, aes(x = Price)) +
  geom_histogram(binwidth = 5, fill = "skyblue", color = "black") +
  labs(title = "Histogram of Sales Prices", x = "Price", y = "Frequency")

# (iv) Calculate average quantity sold per day
avg_quantity_per_day <- sales_data %>%
  group_by(Date) %>%
  summarise(DailyQuantity = sum(Quantity)) %>%
  summarise(AverageQuantity = mean(DailyQuantity))

cat("\nAverage quantity sold per day:", avg_quantity_per_day$AverageQuantity, "\n")

# (v) Identify top 5 best-selling products by total revenue
top_5_products <- total_revenue_per_product %>%
  arrange(desc(TotalRevenue)) %>%
  slice_head(n = 5)

cat("\nTop 5 best-selling products by total revenue:\n")
print(top_5_products)
