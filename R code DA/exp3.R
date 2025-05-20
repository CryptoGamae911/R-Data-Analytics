# Define the vectors
hardware_parts <- c("CPU", "RAM", "Hard Disk", "Motherboard")
manufacturing_year <- c(2020, 2021, 2019, 2022)
unit_cost <- c(15000, 4000, 5000, 10000)

# Combine the vectors horizontally using cbind()
hardware_data <- cbind(hardware_parts, manufacturing_year, unit_cost)

# Display the result
cat("Hardware Details (Using cbind):\n")
print(hardware_data)
