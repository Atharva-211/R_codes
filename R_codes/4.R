#4. Write an R script that creates a multidimensional array and demonstrates how to perform array 
#slicing to extract a specific subarray. Also, use a for loop to iterate over a numeric vector and 
#create a new vector Addition of two vectors.

# Create a multidimensional array
my_array <- array(1:27, dim = c(3, 3, 3))

# Display the original array
cat("Original Array:\n")
print(my_array)

# Perform array slicing to extract a specific subarray
subarray <- my_array[2, , 1]

# Display the extracted subarray
cat("\nExtracted Subarray:\n")
print(subarray)

# Use a for loop to iterate over a numeric vector and create a new vector (addition of two vectors)
vector1 <- c(1, 2, 3, 4, 5)
vector2 <- c(6, 7, 8, 9, 10)
result_vector <- numeric(length(vector1))

for (i in seq_along(vector1)) {
  result_vector[i] <- vector1[i] + vector2[i]
}

# Display the result vector
cat("\nResult Vector (Addition of Two Vectors):\n")
print(result_vector)
