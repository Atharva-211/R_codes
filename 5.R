#5. Write an R script that creates a list (or array) of integers and performs the following operations: 
#append, insert, delete, display min, max, sum and average and find any specific element.

# Create a list of integers
my_list <- c(3, 7, 1, 8, 5, 12, 9, 4, 6)

# Display the original list
cat("Original List:\n")
print(my_list)

# Append an element to the end of the list
my_list <- c(my_list, 10)

# Display the list after appending
cat("\nList after Appending 10:\n")
print(my_list)

# Insert an element at a specific position (e.g., insert 15 at position 4)
position_to_insert <- 4
element_to_insert <- 15
my_list <- c(my_list[1:(position_to_insert - 1)], element_to_insert, my_list[position_to_insert:length(my_list)])

# Display the list after inserting
cat("\nList after Inserting 15 at Position 4:\n")
print(my_list)

# Delete an element at a specific position (e.g., delete element at position 2)
position_to_delete <- 2
my_list <- c(my_list[1:(position_to_delete - 1)], my_list[(position_to_delete + 1):length(my_list)])

# Display the list after deleting
cat("\nList after Deleting Element at Position 2:\n")
print(my_list)

# Display the minimum, maximum, sum, and average of the list
cat("\nMinimum:", min(my_list), "\n")
cat("Maximum:", max(my_list), "\n")
cat("Sum:", sum(my_list), "\n")
cat("Average:", mean(my_list), "\n")

# Find a specific element in the list (e.g., find the index of 8)
element_to_find <- 8
index_of_element <- which(my_list == element_to_find)

cat("\nIndex of Element", element_to_find, ":", ifelse(length(index_of_element) > 0, index_of_element, "Not found"), "\n")
