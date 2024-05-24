#11. Write an R script to create standardized (Z-) scores for several variables Using the preexisting 
#Drinks.csv data file and Display the data from drinks.csv using line graph, scatter plot, histogram 
#and dot plot.

library(ggplot2)

data <-read.csv("C:\\Users\\athar\\OneDrive\\Documents\\r\\Drinks.csv") 

selected_var<-c("beer_servings","spirit_servings","wine_servings","total_litres_of_pure_alcohol")
zscore<-scale(data[ ,selected_var])

data[paste(selected_var,"z_score")]<-zscore
write.csv(data,"D:\\drinks.csv",row.names=FALSE)
print("Z score is generated")


# Line plot
cat("\nLine Plot:\n")
ggplot(data, aes(x = seq_along(beer_servings), y = beer_servings)) +
  geom_line() +
  ggtitle("Line Plot - Beer Servings") +
  xlab("Index") +
  ylab("Beer Servings")

# Scatter plot
cat("\nScatter Plot:\n")
ggplot(data, aes(x = seq_along(beer_servings), y = beer_servings)) +
  geom_point() +
  ggtitle("Scatter Plot - Beer Servings") +
  xlab("Index") +
  ylab("Beer Servings")

# Histogram
cat("\nHistogram:\n")
ggplot(data, aes(x = beer_servings)) +
  geom_histogram(binwidth = 1, fill = "blue", color = "black", alpha = 0.7) +
  ggtitle("Histogram - Beer Servings") +
  xlab("Beer Servings") +
  ylab("Frequency")

# Dot plot
cat("\nDot Plot:\n")
ggplot(data, aes(x = seq_along(beer_servings), y = beer_servings)) +
  geom_point() +
  ggtitle("Dot Plot - Beer Servings") +
  xlab("Index") +
  ylab("Beer Servings") +
  geom_dotplot(binaxis = "y", stackdir = "center", dotsize = 0.7)