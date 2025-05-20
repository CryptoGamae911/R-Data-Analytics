# Load dplyr package for pipe and grouping functions
library(dplyr)

# (i) Group the flowers by Species and display the grouped data
grouped_data <- iris %>%
  group_by(Species)

cat("Grouped data by Species:\n")
print(grouped_data)

# (ii) Summarize the grouped data by mean of Sepal.Length and Sepal.Width
summary_data <- iris %>%
  group_by(Species) %>%
  summarise(
    Mean_Sepal_Length = mean(Sepal.Length),
    Mean_Sepal_Width = mean(Sepal.Width)
  )

cat("\nSummary data (mean Sepal Length and Width) by Species:\n")
print(summary_data)
