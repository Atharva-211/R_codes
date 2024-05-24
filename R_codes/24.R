#24. Write an R script to visualize the relationship between two scale variables creating scatter plots 
#and to quantify this relationship with the correlation coefficient using Drinks.csv data file

# Load necessary libraries
library(ggplot2)

# Read CSV file into a dataframe
data <- read.csv("C:\\Users\\athar\\OneDrive\\Documents\\r\\Drinks.csv")

# Specify the scale variables
variable1 <- "beer_servings"
variable2 <- "wine_servings"

# Create a scatter plot
scatter_plot <- ggplot(data, aes(x = data[[variable1]], y = data[[variable2]])) +
  geom_point(color = "blue") +
  labs(title = paste("Scatter Plot between", variable1, "and", variable2),
       x = variable1,
       y = variable2) +
  theme_minimal()

# Display the scatter plot
print(scatter_plot)

# Calculate the correlation coefficient
correlation_coefficient <- cor(data[[variable1]], data[[variable2]])

# Print the correlation coefficient
cat("Correlation Coefficient between", variable1, "and", variable2, ":", correlation_coefficient, "\n")

