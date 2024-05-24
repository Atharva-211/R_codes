#30. Write an R script to visualize the relationship between two scale variables from provided data file 
#creating scatter plots and to quantify this relationship with the correlation coefficient.

library(readr)
library(ggplot2)

# Read data from CSV file ("Drinks.csv")
drinks_data <- read_csv("C:\\Users\\athar\\OneDrive\\Documents\\r\\Drinks.csv")

# Explore the first few rows of the dataset
head(drinks_data)

# Replace the column names with your actual column names
# Assuming "beer_servings" and "wine_servings" are scale variables

# Create a scatter plot
ggplot(drinks_data, aes(x = beer_servings, y = wine_servings)) +
  geom_point() +
  labs(title = "Scatter Plot of Beer Servings vs. Wine Servings", x = "Beer Servings", y = "Wine Servings")

# Calculate the correlation coefficient
correlation_coefficient <- cor(drinks_data$beer_servings, drinks_data$wine_servings)
cat("Correlation Coefficient:", correlation_coefficient, "\n")
