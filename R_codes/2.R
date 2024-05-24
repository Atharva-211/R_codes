#2. Write an R script that combines multiple logical conditions to filter elements from a list (or array) 
#and Create a for loop to calculate the sum, average, minimum and maximum of the first 10 natural numbers.

# Create a list of numbers
numbers <- 1:20

# Filter elements that meet multiple logical conditions
filtered_numbers <- numbers[numbers %% 2 == 0 & numbers %% 4 == 0]

# Output the filtered numbers
cat("Filtered numbers:", filtered_numbers, "\n")

# For loop to calculate sum, average, minimum, and maximum of the first 10 natural numbers
numbers_to_calculate <- 1:10
sum_result <- 0
min_result <- Inf
max_result <- -Inf

for (number in numbers_to_calculate) {
  sum_result <- sum_result + number
  if (number < min_result) {
    min_result <- number
  }
  if (number > max_result) {
    max_result <- number
  }
}

average_result <- sum_result / length(numbers_to_calculate)

# Output the results
cat("Sum:", sum_result, "\n")
cat("Average:", average_result, "\n")
cat("Minimum:", min_result, "\n")
cat("Maximum:", max_result, "\n")
