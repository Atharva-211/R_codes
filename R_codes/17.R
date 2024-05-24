#17. Write an R script that creates a dataframe and filters rows based on a specific condition using 
#subsetting. use a for loop to iterate over two numeric vector and create a new vector containing the 
#sum values of each element, and represent it using any two suitable graphs.

# Create a dataframe
data <- data.frame(
  ID = 1:10,
  Value1 = c(3, 8, 2, 10, 5, 7, 1, 6, 9, 4),
  Value2 = c(12, 6, 8, 3, 5, 9, 15, 7, 4, 11)
)

# Display the dataframe
cat("Original Dataframe:\n")
print(data)

# Filter rows based on a specific condition (e.g., Value1 greater than 5)
filtered_data <- data[data$Value1 > 5, ]

# Display the filtered dataframe
cat("\nFiltered Dataframe:\n")
print(filtered_data)

# Initialize empty vector to store sum values
sum_values <- numeric(0)

# Use a for loop to iterate over two numeric vectors and create a new vector containing sum values
for (i in 1:nrow(data)) {
  sum_values <- c(sum_values, data$Value1[i] + data$Value2[i])
}

# Display the new vector
cat("\nSum Values Vector:\n")
print(sum_values)

# Represent sum values using two suitable graphs

# Bar plot
barplot(sum_values, names.arg = data$ID, main = "Bar Plot of Sum Values", xlab = "ID", ylab = "Sum Values")

# Scatter plot
plot(data$ID, sum_values, main = "Scatter Plot of Sum Values", xlab = "ID", ylab = "Sum Values")
