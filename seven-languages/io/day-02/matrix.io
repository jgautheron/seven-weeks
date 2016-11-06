# Write the matrix to a file, and read a matrix from a file.

destFile := "./matrix";
matrix := list(
    list(1, 2, 3),
    list(4, 5, 6),
    list(7, 8, 9)
)

# Save the matrix
dataFile := File open(destFile)
dataFile write(matrix serialized)
dataFile close()

# Load the matrix back
loadedMatrix := doFile(destFile)
loadedMatrix println