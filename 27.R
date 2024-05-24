#27. Write an R script to create standardized (Z-) scores for several variables Using the preexisting 
#Drinks.csv data file and Display the data from census.csv using line graph, scatter plot, 
#histogram and dot plot.

library(readr)
library(ggplot2)

data <-read.csv("C:\\Users\\athar\\OneDrive\\Documents\\r\\Drinks.csv") 

selected_var<-c("beer_servings","spirit_servings","wine_servings","total_litres_of_pure_alcohol")
zscore<-scale(data[ ,selected_var])

data[paste(selected_var,"z_score")]<-zscore
write.csv(data,"D:\\drinks.csv",row.names=FALSE)
print("Z score is generated")




# Read data from CSV file ("census.csv")
census_data <- read_csv("C:\\Users\\athar\\OneDrive\\Documents\\r\\Census.csv")

# Explore the first few rows of the dataset
head(census_data)

# Replace the column names with your actual column names
# Assuming "numeric_variable1" and "numeric_variable2" are your numeric columns

# Line graph
ggplot(census_data, aes(x = age, y = education1)) +
  geom_line() +
  labs(title = "Line Graph", x = "Numeric Variable 1", y = "Numeric Variable 2")

# Scatter plot
ggplot(census_data, aes(x = age, y = education1)) +
  geom_point() +
  labs(title = "Scatter Plot", x = "Numeric Variable 1", y = "Numeric Variable 2")

# Histogram
ggplot(census_data, aes(x = age)) +
  geom_histogram(binwidth = 5, fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Histogram", x = "Numeric Variable 1", y = "Frequency")

# Dot plot
ggplot(census_data, aes(x = age)) +
  geom_dotplot(binaxis = "x", stackdir = "center", fill = "red", color = "black") +
  labs(title = "Dot Plot", x = "Numeric Variable 1", y = "Density")