#29. Write an R script to obtain summary statistics for scale variables Using the 
#preexisting Drinks.csv data file and visualize it using any two types of graphs.

library(readr)
library(ggplot2)

# Read data from CSV file ("Drinks.csv")
drinks_data <- read_csv("C:\\Users\\athar\\OneDrive\\Documents\\r\\Drinks.csv")

# Explore the first few rows of the dataset
head(drinks_data)

# Replace the column names with your actual column names
# Assuming "beer_servings" and "wine_servings" are scale variables

# Obtain summary statistics
summary_statistics <- summary(drinks_data$beer_servings)
cat("Summary Statistics for Beer Servings:\n", summary_statistics, "\n\n")

# Obtain summary statistics for another variable (e.g., wine_servings)
summary_statistics_wine <- summary(drinks_data$wine_servings)
cat("Summary Statistics for Wine Servings:\n", summary_statistics_wine, "\n\n")

# Visualize with a box plot
ggplot(drinks_data, aes(x = 1, y = beer_servings)) +
  geom_boxplot(fill = "blue", color = "black") +
  labs(title = "Box Plot of Beer Servings", y = "Beer Servings")

# Visualize with a scatter plot
ggplot(drinks_data, aes(x = beer_servings, y = wine_servings)) +
  geom_point() +
  labs(title = "Scatter Plot of Beer Servings vs. Wine Servings", x = "Beer Servings", y = "Wine Servings")