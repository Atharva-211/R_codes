#7. Write an R script to read a CSV file named into a dataframe and display the first few rows, summary, 
#information of dataset. Display the data from csv in line, scatter, histogram and dot plot.

# Read CSV file into a dataframe
csv_file <- "C:\\Users\\athar\\OneDrive\\Documents\\r\\census.csv"  # Replace with the actual file path
my_data <- read.csv(csv_file)

# Display the first few rows of the dataframe
cat("First few rows of the dataframe:\n")
print(head(my_data))

# Display summary of the dataframe
cat("\nSummary of the dataframe:\n")
print(summary(my_data))

# Display information about the dataframe
cat("\nInformation about the dataframe:\n")
print(str(my_data))

# Line plot
cat("\nLine Plot:\n")
plot(my_data$age, my_data$education1, type = "l", main = "Line Plot", xlab = "X", ylab = "Y")

# Scatter plot
cat("\nScatter Plot:\n")
plot(my_data$age, my_data$education1, main = "Scatter Plot", xlab = "X", ylab = "Y", pch = 19, col = "blue")

# Histogram
cat("\nHistogram:\n")
hist(my_data$age, main = "Histogram", xlab = "X", col = "green")

# Dot Plot
cat("\nDot Plot:\n")
dotchart(my_data$age, main = "Dot Plot", xlab = "X")
