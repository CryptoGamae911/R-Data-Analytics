# 1. Read the dataset
air_quality <- read.csv("Air_Quality.csv", stringsAsFactors = FALSE)

# i) Display the first 5 rows
cat("First 5 rows:\n")
print(head(air_quality, 5))

# ii) Display the last 5 rows
cat("\nLast 5 rows:\n")
print(tail(air_quality, 5))

# iii) Display only the header names
cat("\nHeader names:\n")
print(colnames(air_quality))

# iv) Find number of rows where NA data is present under any header
na_rows <- sum(apply(air_quality, 1, function(x) any(is.na(x))))
cat("\nNumber of rows with NA data present:", na_rows, "\n")

# v) Extract and display unique ‘Name’ entries in the dataset
unique_names <- unique(air_quality$Name)
cat("\nUnique 'Name' entries:\n")
print(unique_names)

# vi) Extract and store the number of rows present for each unique ‘Name’
store_extract <- as.data.frame(table(air_quality$Name))
colnames(store_extract) <- c("Name", "Count")
cat("\nNumber of rows per unique 'Name':\n")
print(store_extract)

# vii) Draw a pie chart with legend and rainbow colors using the values of ‘store_extract’
png(filename = "Student_Rollno_AirQuality_PieChart.png", width = 700, height = 700)
colors <- rainbow(nrow(store_extract))
pie(store_extract$Count,
    labels = paste(store_extract$Name, "\n", store_extract$Count),
    col = colors,
    main = "#Student_Rollno_AirQuality",
    border = "black")
legend("topright", legend = store_extract$Name, fill = colors, cex = 0.8)
dev.off()  # Save and close the plot device
cat("\nPie chart saved as 'Student_Rollno_AirQuality_PieChart.png'\n")

# viii) Draw a bar chart with readable data and labels, save the plot
png(filename = "Student_Rollno_BarChart_AirQuality.png", width = 800, height = 600)
barplot(store_extract$Count,
        names.arg = store_extract$Name,
        col = colors,
        main = "#Student_Rollno_BarChart_AirQuality",
        xlab = "Name",
        ylab = "Count",
        las = 2,        # Rotate labels perpendicular for readability
        cex.names = 0.8,
        cex.axis = 0.8)
dev.off()
cat("\nBar chart saved as 'Student_Rollno_BarChart_AirQuality.png'\n")
