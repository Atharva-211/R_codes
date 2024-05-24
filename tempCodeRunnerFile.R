# Function to determine the sign of a number
get_sign <- function(number) {
  if (number > 0) {
    return("Positive")
  } else if (number < 0) {
    return("Negative")
  } else {
    return("Zero")
  }
}

# Initialize empty vectors to store user-input numbers
x <- numeric(0)
y <- numeric(0)

# Take user-input numbers
num_inputs <- as.integer(readline("Enter the number of inputs: "))

# Input validation
while (is.na(num_inputs) || num_inputs <= 0) {
  cat("Please enter a valid positive integer for the number of inputs.\n")
  num_inputs <- as.integer(readline("Enter the number of inputs: "))
}

for (i in 1:num_inputs) {
  input <- as.numeric(readline(paste("Enter number", i, ": ")))
  
  # Input validation
  while (is.na(input)) {
    cat("Please enter a valid numeric value.\n")
    input <- as.numeric(readline(paste("Enter number", i, ": ")))
  }
  
  x <- c(x, input)
  y <- c(y, input)
  
  # Determine and display the sign of the entered number
  cat("Number", i, "is", get_sign(input), "\n")
}

# Display the vectors x and y
cat("\nVector x:", x, "\n")
cat("Vector y:", y, "\n")

# Plot a scatter plot of the entered numbers
plot(x, y, main = "Scatter Plot of User-Input Numbers", 
     xlab = "X", ylab = "Y", pch = 19, col = "blue")
