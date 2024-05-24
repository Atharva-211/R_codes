#18. Write an R script that creates a multidimensional array and demonstrates how to perform array slicing 
#to extract a specific subarray. Also, use line or scatter plot to represent the matrix values visually, 
#and represent it using any two suitable graphs.

# Create a multidimensional array (3D)
set.seed(123)
array_data <- array(rnorm(27), dim = c(3, 3, 3))

# Print the original array
print("Original 3D Array:")
print(array_data)

# Perform array slicing to extract a specific subarray
subarray <- array_data[2, , ]

# Print the extracted subarray
print("Extracted Subarray:")
print(subarray)

# Flatten the 3D array to a matrix for plotting
matrix_data <- matrix(array_data, nrow = dim(array_data)[1], ncol = dim(array_data)[2] * dim(array_data)[3])

# Line plot to represent matrix values
line_plot <- plot(1:length(matrix_data), matrix_data, type = "l", col = 1:dim(matrix_data)[2], lwd = 2,
                  main = "Line Plot of Matrix Values", xlab = "Index", ylab = "Value")

# Scatter plot to represent matrix values
scatter_plot <- plot(1:length(matrix_data), matrix_data, type = "p", col = 1:dim(matrix_data)[2],
                     main = "Scatter Plot of Matrix Values", xlab = "Index", ylab = "Value")

# Display plots
print("Line Plot:")
print(line_plot)
print("Scatter Plot:")
print(scatter_plot)
