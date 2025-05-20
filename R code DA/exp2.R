# Define the vectors
student_names <- c("Alice", "Bob", "Charlie", "David")
student_ages <- c(19, 20, 18, 21)
data_structures_marks <- c(85, 90, 78, 92)

# Combine the vectors vertically using rbind()
combined_matrix <- rbind(student_names, student_ages, data_structures_marks)

# Display the result
cat("Combined Student Data (Matrix Form):\n")
print(combined_matrix)
