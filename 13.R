#13. Write an R script to create two way cross tabulations to explore the 
#relationship between several variables and to use the Chart Builder to visualize the 
#relationship Using the preexisting Census.csv data file.

# Load required libraries
library(gmodels)
library(sjPlot)

# Read CSV file into a dataframe
data <- read.csv("C:\\Users\\athar\\OneDrive\\Documents\\r\\census.csv")

# Define variables for cross-tabulation
variable1 <- "race"
variable2 <- "sex"

# Create a two-way cross-tabulation
cross_tab <- CrossTable(data[[variable1]], data[[variable2]], prop.r = TRUE, prop.c = TRUE, prop.t = FALSE)

# Print the cross-tabulation
print(cross_tab)

# Create a chart using the sjPlot package
chart <- tab_xtab(data[[variable1]], data[[variable2]])
print(chart)

