# Create the data vector
subjects <- c("Data Structure", "DLD", "Data Analytics", "Machine Learning", "Computer Network and Security")
counts <- c(15, 9, 15, 13, 8)

# Create colors for the pie chart
colors <- c("skyblue", "orange", "lightgreen", "pink", "lightyellow")

# Draw the pie chart with labels, colors, percentages, and title
pie(counts,
    labels = paste(subjects, "\n", counts, "students"),
    col = colors,
    main = "BTech CSE VII A Students Interest Pie Chart",
    border = "black",
    clockwise = TRUE
)
