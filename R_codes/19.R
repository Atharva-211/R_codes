#19. Make stacked dotplots of the same variable from csv file provided to you based on the values of one 
#of your categorical variables. For example, if your quantitative variable is GPAs of students, your 
#categorical variable could be gender. Comment on the similarities and differences between the 
#distributions for the different values of your categorical variable.

# Load required libraries
library(ggplot2)

# Read CSV file into a dataframe
data <- read.csv("C:\\Users\\athar\\OneDrive\\Documents\\r\\census.csv")

# Specify the quantitative and categorical variables
quantitative_variable <- "education1"  # Replace with your variable name
categorical_variable <- "race"  # Replace with your variable name

# Create stacked dotplot using geom_dotplot
dotplot <- ggplot(data, aes(x = .data[[categorical_variable]], y = .data[[quantitative_variable]], fill = .data[[categorical_variable]])) +
  geom_dotplot(binaxis = "y", stackgroups = TRUE, position = "stack", aes(color = .data[[categorical_variable]]), size = 3) +
  labs(title = paste("Stacked Dotplot of", quantitative_variable, "by", categorical_variable),
       x = categorical_variable,
       y = quantitative_variable) +
  theme_minimal()

# Display the dotplot
print(dotplot)
