# (i) Display first 5 rows of data
cat("First 5 data points of WWWusage:\n")
print(head(WWWusage, 5))

# (ii) Check the description of data
cat("\nDescription of WWWusage dataset:\n")
help(WWWusage)

# (iii) Plot two graphs
require(graphics)

work <- diff(WWWusage)  # Calculate the differences between consecutive points

# Set up plotting area: 2 rows, 1 column of plots
par(mfrow = c(2, 1))

# Plot original WWWusage time series
plot(WWWusage, main = "Original WWWusage Data", ylab = "Number of Users", xlab = "Time")

# Plot the differenced data
plot(work, main = "Differenced WWWusage Data", ylab = "Difference in Users", xlab = "Time")
