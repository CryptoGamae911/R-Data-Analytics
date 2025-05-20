# Create a numeric vector with enough elements
vec <- 1:140  # 7*10*2 = 140 elements

# Create array of dimension (7, 10, 2)
array1 <- array(vec, dim = c(7, 10, 2))

# Create array of dimension (3, 3, 2) - needs 18 elements
array2 <- array(vec, dim = c(3, 3, 2))

# Create array of dimension (2, 5, 2) - needs 20 elements
array3 <- array(vec, dim = c(2, 5, 2))

# Display arrays
cat("Array (7, 10, 2):\n")
print(array1)

cat("\nArray (3, 3, 2):\n")
print(array2)

cat("\nArray (2, 5, 2):\n")
print(array3)
