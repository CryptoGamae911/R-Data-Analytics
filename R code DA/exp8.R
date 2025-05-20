# a) Display data in the dataset
data(mtcars)           # Load the dataset
print(mtcars)          # Print all data

# b) Information/description of the data
?mtcars                # Shows help file in R GUI or console (for manual check)
# Or programmatically get description (using 'datasets' package info)
library(help = "datasets")  # Displays all datasets and descriptions

# c) Find the column names
col_names <- colnames(mtcars)
cat("Column names:\n")
print(col_names)

# d) Find the dimension of the dataset (rows and columns)
dims <- dim(mtcars)
cat("\nDimensions (rows, columns):\n")
print(dims)

# e) Find the length of the dataset (number of columns)
length_dataset <- length(mtcars)
cat("\nLength of the dataset (number of columns):\n")
print(length_dataset)

# f) Find the summary of the dataset
cat("\nSummary of the dataset:\n")
summary(mtcars)
