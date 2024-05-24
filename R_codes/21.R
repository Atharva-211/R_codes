#21. Create a histogram and a dotplot of the data. Comment on any symmetry or skewness and on the presence 
#of clusters and any potential outliers. And draw a box-and-whisker plot for the entire data set.

# Load required libraries
library(ggplot2)
#library(gridExtra)

# Read CSV file into a dataframe
data <- read.csv("C:\\Users\\athar\\OneDrive\\Documents\\r\\census.csv")

# Specify the quantitative variable
quantitative_variable <- "education1"  # Replace with your variable name

# Create histogram
histogram <- ggplot(data, aes(x = .data[[quantitative_variable]])) +
  geom_histogram(binwidth = 1, fill = "skyblue", color = "black") +
  labs(title = paste("Histogram of", quantitative_variable),
       x = quantitative_variable,
       y = "Frequency") +
  theme_minimal()

# Create dotplot
dotplot <- ggplot(data, aes(x = .data[[quantitative_variable]], y = ..count..)) +
  geom_dotplot(binwidth = 1, fill = "orange", color = "black") +
  labs(title = paste("Dotplot of", quantitative_variable),
       x = quantitative_variable,
       y = "Frequency") +
  theme_minimal()

# Create box-and-whisker plot
boxplot <- ggplot(data, aes(x = 1, y = .data[[quantitative_variable]])) +
  geom_boxplot(fill = "lightgreen", color = "black") +
  labs(title = paste("Box-and-Whisker Plot of", quantitative_variable),
       x = "Category",
       y = quantitative_variable) +
  theme_minimal()

# Display plots side by side
grid.arrange(histogram, dotplot, boxplot, ncol = 3)
