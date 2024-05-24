#12. Write an R script to run Frequencies to explore the distributions of several variables Using 
#the preexisting Census.csv data file and display the data from csv file in 
#line graph, scatter plot, histogram and dot plot.
# Load required libraries
library(readr)
library(ggplot2)

# Read CSV file into a dataframe
data <- read.csv("C:\\Users\\athar\\OneDrive\\Documents\\r\\census.csv")

# Display frequencies of specified variables
selected_variables <- c("sex" , "education1", "race")
freq_result <- lapply(data[selected_variables], table)

# Print frequency tables
print("Frequency tables:")
print(freq_result)

# Display data in different plots
for (variable in selected_variables) {
  # Line Plot
  line_plot <- ggplot(data, aes(x = seq_along(.data[[variable]]), y = .data[[variable]])) +
    geom_line(color = "blue") +
    ggtitle(paste("Line Plot for", variable)) +
    xlab("Row Number") +
    ylab(variable) +
    theme_minimal()
  
  # Scatter Plot
  scatter_plot <- ggplot(data, aes(x = .data[[variable]], y = .data[[variable]])) +
    geom_point(color = "green", size = 2) +
    ggtitle(paste("Scatter Plot for", variable)) +
    xlab(variable) +
    ylab(variable) +
    theme_minimal()
  
  # Histogram
  histogram <- ggplot(data, aes(x = .data[[variable]])) +
    geom_bar(fill = "orange", color = "black", stat = "count") +
    ggtitle(paste("Histogram for", variable)) +
    xlab(variable) +
    ylab("Frequency") +
    theme_minimal()
  
  # Dot Plot
  dot_plot <- ggplot(data, aes(x = .data[[variable]], y = ..count..)) +
    geom_dotplot(binwidth = 1, fill = "red", color = "black") +
    ggtitle(paste("Dot Plot for", variable)) +
    xlab(variable) +
    ylab("Count") +
    theme_minimal()
  
  # Print plots
  print(line_plot)
  print(scatter_plot)
  print(histogram)
  print(dot_plot)
}
