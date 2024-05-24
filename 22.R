#22. Prepare an appropriate type of frequency distribution table for one of the quantitative variables and 
#then compute relative frequencies and cumulative relative frequencies using census.csv dataset

# Read CSV file into a dataframe
data <- read.csv("C:\\Users\\athar\\OneDrive\\Documents\\r\\Census.csv")

# Specify the quantitative variable
quantitative_variable <- "age"

# Create a frequency table
freq_table <- table(data[[quantitative_variable]])

# Convert frequency table to a data frame
freq_df <- as.data.frame(freq_table)
colnames(freq_df) <- c(quantitative_variable, "Frequency")

# Compute relative frequencies
freq_df$Relative_Frequency <- freq_df$Frequency / sum(freq_df$Frequency)

# Compute cumulative relative frequencies
freq_df$Cumulative_Relative_Frequency <- cumsum(freq_df$Relative_Frequency)

# Print the frequency table
print("Frequency Table:")
print(freq_df)
