#14. Write an R script to visualize the relationship between two scale variables creating scatter plots 
#and to quantify this relationship with the correlation coefficient using census.csv data file.

# Load necessary libraries
library(ggplot2)

# Read CSV file into a dataframe
data <- read.csv("C:\\Users\\athar\\OneDrive\\Documents\\r\\census.csv")

# Define the two scale variables for the scatter plot
variable1 <- "age"
variable2 <- "education1"

# Create a scatter plot
scatter_plot <- ggplot(data, aes(x = data[[variable1]], y = data[[variable2]])) +
  geom_point() +
  labs(title = paste("Scatter Plot of", variable1, "vs", variable2),
       x = variable1, y = variable2)

# Display the scatter plot
print(scatter_plot)

# Calculate and display the correlation coefficient
correlation_coefficient <- cor(data[[variable1]], data[[variable2]])
cat("Correlation Coefficient:", correlation_coefficient, "\n")
