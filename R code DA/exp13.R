# Load dplyr package
library(dplyr)

# Group by number of cylinders and calculate mean mpg
mean_mpg_by_cyl <- mtcars %>%
  group_by(cyl) %>%
  summarise(mean_mpg = mean(mpg))

# Display the result
print(mean_mpg_by_cyl)
