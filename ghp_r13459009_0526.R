# used package
library(dplyr)

# file loading
data <- read.csv("C:/Users/81806/Documents/ghp_r13459009-5.26/ghp_r13459009_0526/dengue_assignment.csv")

# Extract rows where the 'year' column is 2014
data_2014 <- filter(data, year == 2014)

# Calculate the sum of the 'total_cases' column
total_cases_2014 <- data_2014 %>% 
  summarise(total = sum(case_number, na.rm = TRUE)) %>% 
  pull(total)

# Display the result
print(paste("total cases in 2014: ", total_cases_2014))

