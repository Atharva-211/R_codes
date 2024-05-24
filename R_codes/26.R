#26. Use the appropriate R package to read data from an Excel file ("data.xlsx") and print 5-point summary 
#of the dataframe along with box-whisker plot and dot plot using drinks.csv data file.

library(readxl)

# Read data from Excel file ("data.xlsx")
excel_data <- read_excel("C:\\Users\\athar\\OneDrive\\Documents\\r\\ese.xlsx")

library(readr)
library(ggplot2)

# Read data from CSV file ("drinks.csv")
drinks_data <- read_csv("C:\\Users\\athar\\OneDrive\\Documents\\r\\Drinks.csv")

# Print 5-point summary
cat("5-Point Summary:\n")
summary(drinks_data)
cat("\n")

# Create a box-whisker plot
ggplot(drinks_data, aes(y = beer_servings)) +
  geom_boxplot(fill = "blue", color = "black") +
  labs(title = "Box-Whisker Plot", y = "Beer Servings")

# Create a dot plot
ggplot(drinks_data, aes(x = 1, y = beer_servings)) +
  geom_dotplot(binaxis = "y", stackdir = "center", fill = "red", color = "black") +
  labs(title = "Dot Plot", y = "Beer Servings")
