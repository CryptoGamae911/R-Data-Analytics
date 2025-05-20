# Create vectors for each column

# Serial numbers 1 to 10
Serial_No <- 1:10

# Roll numbers (example)
Roll_no <- c("PIEMR24A01", "PIEMR24A02", "PIEMR24A03", "PIEMR24A04", "PIEMR24A05",
             "PIEMR24A06", "PIEMR24A07", "PIEMR24A08", "PIEMR24A09", "PIEMR24A10")

# Student names
Name <- c("Alice", "Bob", "Charlie", "David", "Eva", "Frank", "Grace", "Hannah", "Ian", "Judy")

# Subjects (same for all students)
Subject_name1 <- rep("Maths", 10)
Subject_name2 <- rep("Physics", 10)
Subject_name3 <- rep("Data Structures", 10)
Subject_name4 <- rep("Algorithms", 10)

# Marks (example random marks out of 100)
Marks1 <- c(85, 78, 90, 88, 76, 95, 89, 84, 92, 80)
Marks2 <- c(75, 82, 88, 90, 80, 91, 87, 83, 85, 79)
Marks3 <- c(90, 88, 92, 85, 89, 94, 91, 87, 90, 86)
Marks4 <- c(88, 85, 90, 89, 84, 92, 90, 86, 88, 83)

# Create the data frame
student_df <- data.frame(
  Serial_No,
  Roll_no,
  Name,
  Subject_name1, Marks1,
  Subject_name2, Marks2,
  Subject_name3, Marks3,
  Subject_name4, Marks4,
  stringsAsFactors = FALSE
)

# View the data frame (optional)
print(student_df)

# Save the data frame to 'student.csv'
write.csv(student_df, file = "student.csv", row.names = FALSE)

cat("Data frame saved to 'student.csv' successfully.\n")
