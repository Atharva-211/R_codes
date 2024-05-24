#9. Use the appropriate R package to read data from an Excel file ("data.xlsx") 
#and print 5-point summary of the dataframe along with box-whisker plot and dot plot.
# Load the readxl package
library(readxl)
library(lattice)  # Load the lattice package for dotplot

# Read data from Excel file
excel_file_path <- "C:\\Users\\athar\\OneDrive\\Documents\\r\\ese.xlsx"  # Replace with the actual file path
my_data <- read_xlsx(excel_file_path)

# Display the first few rows of the dataframe
cat("First few rows of the dataframe:\n")
print(head(my_data))

# 5-point summary
cat("\n5-Point Summary:\n")
summary_stats <- summary(my_data)
print(summary_stats)

# Box-whisker plot
cat("\nBox-Whisker Plot:\n")
boxplot(my_data, main = "Box-Whisker Plot")

# Dot Plot
cat("\nDot Plot:\n")
dotchart(my_data$Column1, main = "Dot Plot", xlab = "X")
