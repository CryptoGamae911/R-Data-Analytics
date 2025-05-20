# Install and load the plotrix package if not already installed
if (!require(plotrix)) {
  install.packages("plotrix")
  library(plotrix)
} else {
  library(plotrix)
}

# Data vectors
subjects <- c("Data Structure", "DLD", "Data Analytics", "Machine Learning", "Computer Network and Security")
counts <- c(15, 9, 15, 13, 8)

# Calculate percentages
pct <- round(counts / sum(counts) * 100, 1)

# Labels with percentages
labels <- paste(subjects, ":", pct, "%")

# Colors for slices
colors <- c("skyblue", "orange", "lightgreen", "pink", "lightyellow")

# Draw 3D pie chart
pie3D(counts,
      labels = labels,
      explode = 0.1,
      main = "BTech CSE VII A Students Interest Pie Chart",
      col = colors,
      labelcex = 0.8,
      start = 0.7)

# Add legend
legend("topright",
       legend = subjects,
       fill = colors,
       cex = 0.8)
