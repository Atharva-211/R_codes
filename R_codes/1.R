#1. Write an R script that checks if a number is divisible by both 2 and 3 using logical operators 
#and Create a for loop to calculate the sum, average, minimum and maximum of the first 10 natural numbers.
# Function to check if a number is divisible by both 2 and 3
is_divisible_by_2_and_3 <- function(number) {
  return(number %% 2 == 0 & number %% 3 == 0)
}

# Test the function
test_number <- 6
if (is_divisible_by_2_and_3(test_number)) {
  cat(paste(test_number, "is divisible by both 2 and 3.\n"))
} else {
  cat(paste(test_number, "is not divisible by both 2 and 3.\n"))
}

# For loop to calculate sum, average, minimum, and maximum of the first 10 natural numbers
numbers <- 1:10
sum_result <- 0
min_result <- Inf
max_result <- -Inf

for (number in numbers) {
  sum_result <- sum_result + number
  if (number < min_result) {
    min_result <- number
  }
  if (number > max_result) {
    max_result <- number
  }
}

average_result <- sum_result / length(numbers)

cat("Sum:", sum_result, "\n")
cat("Average:", average_result, "\n")
cat("Minimum:", min_result, "\n")
cat("Maximum:", max_result, "\n")
