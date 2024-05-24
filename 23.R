#23. Prepare an appropriate type of frequency distribution table for one of the quantitative variables 
#and then compute relative frequencies and cumulative relative frequencies using Drinks.csv data file.

# Read CSV file into a dataframe
data <- read.csv("C:\\Users\\athar\\OneDrive\\Documents\\r\\Drinks.csv")

# Specify the quantitative variable
quantitative_variable <- "beer_servings"  # Replace with your variable name

# Create a frequency distribution table
freq_table <- table(data[[quantitative_variable]])

# Create a dataframe for the frequency distribution
freq_df <- data.frame(Value = as.numeric(names(freq_table)),
                      Frequency = as.numeric(freq_table))

# Sort the dataframe by the Value column
freq_df <- freq_df[order(freq_df$Value), ]

# Calculate relative frequencies
freq_df$Relative_Frequency <- freq_df$Frequency / sum(freq_df$Frequency)

# Calculate cumulative relative frequencies
freq_df$Cumulative_Relative_Frequency <- cumsum(freq_df$Relative_Frequency)

# Display the frequency distribution table
cat("Frequency Distribution Table for", quantitative_variable, ":\n")
print(freq_df)

# Optionally, you can export the frequency distribution table to a CSV file
# write.csv(freq_df, "frequency_distribution.csv", row.names = FALSE)

