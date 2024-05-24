#3. Write an R script that creates a dataframe and filters rows based on a specific condition using 
#subsetting. Also, use a for loop to iterate over a numeric vector and create a new vector containing 
#the squared values of each element.
# Create a dataframe
data <- data.frame(
  ID = 1:10,
  Value = c(3, 7, 8, 12, 5, 9, 2, 15, 6, 10)
)

# Display the original dataframe
cat("Original Dataframe:\n")
print(data)

# Filter rows based on a specific condition (e.g., Value greater than 5)
filtered_data <- subset(data, Value > 8)

# Display the filtered dataframe
cat("\nFiltered Dataframe:\n")
print(filtered_data)

# Use a for loop to create a new vector with squared values
original_vector <- c(1, 2, 3, 4, 5)
squared_vector <- numeric(length(original_vector))

for (i in seq_along(original_vector)) {
  squared_vector[i] <- original_vector[i] ^ 2
}

# Display the squared vector
cat("\nSquared Vector:\n")
print(squared_vector)
