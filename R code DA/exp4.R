# Create two 3x3 matrices
matrix1 <- matrix(c(5, 8, 3,
                    4, 6, 7,
                    2, 9, 1), 
                  nrow = 3, byrow = TRUE)

matrix2 <- matrix(c(1, 2, 3,
                    4, 5, 6,
                    7, 8, 9), 
                  nrow = 3, byrow = TRUE)

# Perform matrix addition
addition_result <- matrix1 + matrix2

# Perform matrix subtraction
subtraction_result <- matrix1 - matrix2

# Perform matrix multiplication (matrix product)
multiplication_result <- matrix1 %*% matrix2

# Perform element-wise matrix division
division_result <- matrix1 / matrix2

# Display results
cat("Matrix 1:\n")
print(matrix1)

cat("\nMatrix 2:\n")
print(matrix2)

cat("\nMatrix Addition:\n")
print(addition_result)

cat("\nMatrix Subtraction:\n")
print(subtraction_result)

cat("\nMatrix Multiplication (Matrix Product):\n")
print(multiplication_result)

cat("\nElement-wise Matrix Division:\n")
print(division_result)
