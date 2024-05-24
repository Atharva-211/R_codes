#10. Write a script that reads data from a CSV file, calculates the average of a specific column, and uses 
#an if/else statement to determine whether the average is above or below a certain threshold. Display the 
#data from csv in line, scatter, histogram and dot plot.
# Load required packages
library(readr)
library(ggplot2)

# Read data from CSV file
csv_file_path <- "C:\\Users\\athar\\OneDrive\\Documents\\r\\helmet_use.csv"  # Replace with the actual file path
my_data <- read_csv(csv_file_path)

# Display the first few rows of the dataframe
cat("First few rows of the dataframe:\n")
print(head(my_data))

# Calculate the average of a specific column (replace "ColumnName" with the actual column name)
selected_column <- "Column2"
average_value <- mean(my_data[[selected_column]])

# Display the calculated average
cat("\nAverage of", selected_column, ":", average_value, "\n")

# Determine whether the average is above or below a threshold
threshold <- 10  # Replace with your desired threshold
if (average_value > threshold) {
  cat("The average is above the threshold.\n")
} else {
  cat("The average is below or equal to the threshold.\n")
}

# Display the data using different plots

# Line plot
cat("\nLine Plot:\n")
ggplot(my_data, aes(x = seq_along(my_data[[selected_column]]), y = my_data[[selected_column]])) +
  geom_line() +
  ggtitle("Line Plot") +
  xlab("Index") +
  ylab("Value")

# Scatter plot
cat("\nScatter Plot:\n")
ggplot(my_data, aes(x = seq_along(my_data[[selected_column]]), y = my_data[[selected_column]])) +
  geom_point() +
  ggtitle("Scatter Plot") +
  xlab("Index") +
  ylab("Value")

# Histogram
cat("\nHistogram:\n")
ggplot(my_data, aes(x = my_data[[selected_column]])) +
  geom_histogram(binwidth = 1, fill = "blue", color = "black", alpha = 0.7) +
  ggtitle("Histogram") +
  xlab("Value") +
  ylab("Frequency")

# Dot plot
cat("\nDot Plot:\n")
ggplot(my_data, aes(x = seq_along(my_data[[selected_column]]), y = my_data[[selected_column]])) +
  geom_point() +
  ggtitle("Dot Plot") +
  xlab("Index") +
  ylab("Value") +
  geom_dotplot(binaxis = "y", stackdir = "center", dotsize = 0.7)
