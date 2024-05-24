#25. Calculate summary measures (mean, standard deviation, first quartile, third quartile and interquartile 
#range) for the variable you graphed above. Do this for the entire data set, as well as for the different 
#groups formed by the categorical variable that you used to divide the data set using Census.csv data file.

library(readr)

# Load the Census data from the CSV file
census_data <- read_csv("C:\\Users\\athar\\OneDrive\\Documents\\r\\census.csv")

# Explore the first few rows of the dataset
head(census_data)

# Replace "age" and "income" with your actual column names
# Assuming "age" is your numeric variable and "income" is your categorical variable

# Calculate summary measures for the entire dataset
summary_entire <- summary(census_data$age)
cat("Summary Measures for the Entire Dataset:\n", summary_entire, "\n\n")

# Calculate summary measures for different income groups
summary_by_income <- tapply(census_data$age, census_data$race, function(x) {
  list(
    mean = mean(x),
    sd = sd(x),
    Q1 = quantile(x, 0.25),
    median = median(x),
    Q3 = quantile(x, 0.75),
    IQR = IQR(x)
  )
})

# Print summary measures for each income group
for (income_group in unique(census_data$income)) {
  cat("Summary Measures for Income Group", income_group, ":\n", summary_by_income[[as.character(income_group)]], "\n\n")
}
