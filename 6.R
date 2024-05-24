#6. Write an R script that takes a user-input number and uses an if/else statement to determine whether 
#it is positive, negative, or zero. Take some numbers from users and store in x and y vectors to plot 
#any kind of graph using it.
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

# Take user-input numbers for x
num_inputs_x <- as.numeric(readline("Enter the number of inputs for x: "))

for (i in 1:num_inputs_x) {
  input_x <- as.numeric(readline(paste("Enter x", i, ": ")))
  x <- c(x, input_x)
  
  # Determine and display the sign of the entered number for x
  cat("x", i, "is", get_sign(input_x), "\n")
}

# Take user-input numbers for y
num_inputs_y <- as.numeric(readline("Enter the number of inputs for y: "))

for (i in 1:num_inputs_y) {
  input_y <- as.numeric(readline(paste("Enter y", i, ": ")))
  y <- c(y, input_y)
  
  # Determine and display the sign of the entered number for y
  cat("y", i, "is", get_sign(input_y), "\n")
}

# Display the vectors x and y
cat("\nVector x:", x, "\n")
cat("Vector y:", y, "\n")

# Plot a scatter plot of the entered numbers
plot(x, y, main = "Scatter Plot of User-Input Numbers", 
     xlab = "X", ylab = "Y", pch = 19, col = "blue")
