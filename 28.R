#28. Write an R script to run Frequencies to explore the distributions of several variables Using the 
#preexisting provided .csv data file and display the data from csv file in line graph, scatter plot, 
#histogram and dot plot

library(readr)
library(ggplot2)

# Read data from CSV file ("C:\\Users\\athar\\OneDrive\\Documents\\r\\Census.csv")
your_data <- read_csv("C:\\Users\\athar\\OneDrive\\Documents\\r\\Census.csv")

# Explore the first few rows of the dataset
head(your_data)

# Replace the column names with your actual column names
# Assuming "numeric_variable1" and "numeric_variable2" are your numeric columns

# Run frequencies using base R functions
frequencies_numeric_variable1 <- table(your_data$age)
frequencies_numeric_variable2 <- table(your_data$education1)
frequencies_another_variable <- table(your_data$another_variable)

# Print the frequencies
cat("Frequencies for Numeric Variable 1:\n")
print(frequencies_numeric_variable1)
cat("\n")

cat("Frequencies for Numeric Variable 2:\n")
print(frequencies_numeric_variable2)
cat("\n")

cat("Frequencies for Another Variable:\n")
print(frequencies_another_variable)
cat("\n")

# Line graph
ggplot(your_data, aes(x = age, y = education1)) +
  geom_line() +
  labs(title = "Line Graph", x = "Numeric Variable 1", y = "Numeric Variable 2")

# Scatter plot
ggplot(your_data, aes(x = age, y = education1)) +
  geom_point() +
  labs(title = "Scatter Plot", x = "Numeric Variable 1", y = "Numeric Variable 2")

# Histogram
ggplot(your_data, aes(x = age)) +
  geom_histogram(binwidth = 5, fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Histogram", x = "Numeric Variable 1", y = "Frequency")

# Dot plot
ggplot(your_data, aes(x = age)) +
  geom_dotplot(binaxis = "x", stackdir = "center", fill = "red", color = "black") +
  labs(title = "Dot Plot", x = "Numeric Variable 1", y = "Density")