#20. Calculate summary measures (mean, standard deviation, first quartile, third quartile and interquartile 
#range) for the variable you graphed above. Do this for the entire data set, as well as for the different 
#groups formed by the categorical variable that you used to divide the data set.

# Read CSV file into a dataframe
data <- read.csv("C:\\Users\\athar\\OneDrive\\Documents\\r\\census.csv")

# Specify the quantitative and categorical variables
quantitative_variable <- "education1"  # Replace with your variable name
categorical_variable <- "race"  # Replace with your variable name

# Calculate summary measures for the entire dataset
summary_entire <- summary(data[[quantitative_variable]])

# Calculate summary measures for different groups formed by the categorical variable
summary_by_group <- lapply(split(as.vector(data[[quantitative_variable]]), data[[categorical_variable]]), summary)

# Display results
cat("Summary Measures for the Entire Dataset:\n")
print(summary_entire)

cat("\nSummary Measures by", categorical_variable, ":\n")
print(summary_by_group)
