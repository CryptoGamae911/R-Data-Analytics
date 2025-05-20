vector1 <- c(10, 20, 30, 40, 50)
vector2 <- c(2, 4, 5, 10, 5)
addition_result <- vector1 + vector2
subtraction_result <- vector1 - vector2
multiplication_result <- vector1 * vector2
division_result <- vector1 / vector2  # Will result in numeric values (not integers if not divisible)

cat("Vector 1: ", vector1, "\n")
cat("Vector 2: ", vector2, "\n\n")

cat("Addition Result: \n")
print(addition_result)
cat("Subtraction Result: \n")
print(subtraction_result)
cat("Multiplication Result: \n")
print(multiplication_result)
cat("Division Result: \n")
print(division_result