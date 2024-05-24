#15. Write an R script to run the Independent-Samples T Test, to interpret the output and visualize 
#the results with an error bar chart. Using the preexisting Census.csv data file.
# Read CSV file into a dataframe
data <- read.csv("C:\\Users\\athar\\OneDrive\\Documents\\r\\census.csv")

# Select two groups for the Independent-Samples T Test
group1 <- " HS-grad"
group2 <- " Bachelors"

# Subset the data for the two groups
group1_data <- data[data$education == group1, "age"]
group2_data <- data[data$education == group2, "age"]


# Perform Independent-Samples T Test
t_test_result <- t.test(group1_data, group2_data)

# Interpret the output
cat("Independent-Samples T Test Result:\n")
cat("  Test Statistic:", t_test_result$statistic, "\n")
cat("  Degrees of Freedom:", t_test_result$parameter, "\n")
cat("  P-value:", t_test_result$p.value, "\n")

# Calculate means and standard deviations
mean_values <- c(mean(group1_data), mean(group2_data))
sd_values <- c(sd(group1_data), sd(group2_data))

# Create an error bar chart
barplot(mean_values, names.arg = c(group1, group2), col = c("lightblue", "lightgreen"),
        ylim = c(min(mean_values - sd_values), max(mean_values + sd_values)),
        main = "Error Bar Chart of Age by Education Level",
        xlab = "Education Level", ylab = "Mean Age")

arrows(1:2, mean_values - sd_values, 1:2, mean_values + sd_values, angle = 90, code = 3, length = 0.1)
