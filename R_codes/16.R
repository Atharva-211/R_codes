#16. Write an R script to use One-Way ANOVA with post hoc tests to explore the relationship between 
#several variables Using the preexisting data file Census.csv and represent it using any two suitable graphs.
# Read CSV file into a dataframe
data <- read.csv("C:\\Users\\athar\\OneDrive\\Documents\\r\\Census.csv")

# Convert 'education1' to a factor
data$education1 <- as.factor(data$education1)

# Perform One-Way ANOVA
anova_result <- aov(age ~ education1, data = data)

# Display ANOVA table
print(summary(anova_result))

# Perform post hoc tests (Tukey's HSD)
posthoc_result <- TukeyHSD(anova_result)

# Display post hoc results
print(posthoc_result)

# Visualize the results with box plots
boxplot(age ~ education1, data = data, col = "lightblue", main = "Boxplot of Age by Education Level", xlab = "Education Level", ylab = "Age")


# Visualize the post hoc tests using a graph (e.g., letters indicating significant groups)
par(mar = c(5, 4, 4, 2))
plot(posthoc_result, col = "lightblue")
title(main = "Tukey's HSD Post Hoc Test")
