# Existing data frame from question 6 (old data)
Serial_No <- 1:10
Roll_no <- c("PIEMR24A01", "PIEMR24A02", "PIEMR24A03", "PIEMR24A04", "PIEMR24A05",
             "PIEMR24A06", "PIEMR24A07", "PIEMR24A08", "PIEMR24A09", "PIEMR24A10")
Name <- c("Alice", "Bob", "Charlie", "David", "Eva", "Frank", "Grace", "Hannah", "Ian", "Judy")
Subject_name1 <- rep("Maths", 10)
Subject_name2 <- rep("Physics", 10)
Subject_name3 <- rep("Data Structures", 10)
Subject_name4 <- rep("Algorithms", 10)
Marks1 <- c(85, 78, 90, 88, 76, 95, 89, 84, 92, 80)
Marks2 <- c(75, 82, 88, 90, 80, 91, 87, 83, 85, 79)
Marks3 <- c(90, 88, 92, 85, 89, 94, 91, 87, 90, 86)
Marks4 <- c(88, 85, 90, 89, 84, 92, 90, 86, 88, 83)

old_student_df <- data.frame(
  Serial_No,
  Roll_no,
  Name,
  Subject_name1, Marks1,
  Subject_name2, Marks2,
  Subject_name3, Marks3,
  Subject_name4, Marks4,
  stringsAsFactors = FALSE
)

# New data frame with new students, same headers
new_Serial_No <- 11:15
new_Roll_no <- c("PIEMR24A11", "PIEMR24A12", "PIEMR24A13", "PIEMR24A14", "PIEMR24A15")
new_Name <- c("Kyle", "Laura", "Mike", "Nina", "Oscar")
new_Subject_name1 <- rep("Maths", 5)
new_Subject_name2 <- rep("Physics", 5)
new_Subject_name3 <- rep("Data Structures", 5)
new_Subject_name4 <- rep("Algorithms", 5)
new_Marks1 <- c(82, 87, 91, 77, 85)
new_Marks2 <- c(80, 83, 86, 88, 82)
new_Marks3 <- c(88, 90, 93, 85, 89)
new_Marks4 <- c(85, 87, 89, 84, 88)

new_student_df <- data.frame(
  Serial_No = new_Serial_No,
  Roll_no = new_Roll_no,
  Name = new_Name,
  Subject_name1 = new_Subject_name1, Marks1 = new_Marks1,
  Subject_name2 = new_Subject_name2, Marks2 = new_Marks2,
  Subject_name3 = new_Subject_name3, Marks3 = new_Marks3,
  Subject_name4 = new_Subject_name4, Marks4 = new_Marks4,
  stringsAsFactors = FALSE
)

# Combine old and new data frames
extended_student_df <- rbind(old_student_df, new_student_df)

# Display combined data frame (optional)
print(extended_student_df)

# Save combined data frame to CSV
write.csv(extended_student_df, file = "extended_student.csv", row.names = FALSE)

cat("Combined data frame saved as 'extended_student.csv'\n")
