#8. Implement a nested if/else statement to classify a given number as odd or even and, within each 
#category, as positive, negative, or zero. Display the data from csv in line, 
#scatter, histogram and dot plot.
# Read CSV file into a dataframe
csv_file_path <- "C:\\Users\\athar\\OneDrive\\Documents\\r\\helmet_use.csv"  # Replace with the actual file path
my_data <- read.csv(csv_file_path)

# Display the first few rows of the dataframe
cat("First few rows of the dataframe:\n")
print(head(my_data))

# Nested if/else statement to classify a number
classify_number <- function(number) {
  if (number %% 2 == 0) {
    # Even
    if (number > 0) {
      cat("Even, Positive\n")
    } else if (number < 0) {
      cat("Even, Negative\n")
    } else {
      cat("Even, Zero\n")
    }
  } else {
    # Odd
    if (number > 0) {
      cat("Odd, Positive\n")
    } else if (number < 0) {
      cat("Odd, Negative\n")
    } else {
      cat("Odd, Zero\n")
    }
  }
}

# Apply the classification to a sample number (replace with your actual data)
sample_number <- my_data$Column2[1]  # Replace with the column name from your data
cat("Classification for sample number:", sample_number, "\n")
classify_number(sample_number)

# Display the data using different plots

# Line plot
cat("\nLine Plot:\n")
plot(my_data$Column1, type = "l", main = "Line Plot", xlab = "X", ylab = "Y")

# Scatter plot
cat("\nScatter Plot:\n")
plot(my_data$Column1, my_data$Column2, main = "Scatter Plot", xlab = "X", ylab = "Y", pch = 19, col = "blue")

# Histogram
cat("\nHistogram:\n")
hist(my_data$Column1, main = "Histogram", xlab = "X", col = "green")

# Dot Plot
cat("\nDot Plot:\n")
dotchart(my_data$Column1, main = "Dot Plot", xlab = "X")
