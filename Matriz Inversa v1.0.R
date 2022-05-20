# ------------------------------------------------------------------------------
# last update: 20220426.2220
# ------------------------------------------------------------------------------
## install.packages("matlab") # nolint
library(matlib)

a1 <- c(2,-2,-5) # nolint
a2 <- c(0,3,5) # nolint
a3 <- c(1, 4, 6)
myInvMatrix <- cbind(a1, a2, a3) # nolint
myInvMatrix

# inv() function is a built-in function in R which is especially used to find the inverse of a matrix. # nolint
inv(myInvMatrix)

# Calculate the determinant of a matrix in R, use the det() function.  # nolint
1/det(myInvMatrix)*adjoint(myInvMatrix) # nolint

#To transpose a matrix in R, use the t() method.
tm <- t(myInvMatrix)
tm

#------------------------------------------------------------------------------------------------------ # nolint
# R program to illustrate
# solve function
  
# Create 3 different vectors  # nolint
# using combine method.  # nolint
a1 <- c(3, 2, 5)  # nolint
a2 <- c(2, 3, 2)  # nolint
a3 <- c(5, 2, 4)  # nolint
    
# bind the three vectors into a matrix   # nolint
# using rbind() which is basically  # nolint # nolint
# row-wise binding
A <- rbind(a1, a2, a3)  # nolint
    
# print the original matrix  # nolint
print(A)  # nolint # nolint
    
# Use the solve() function   # nolint # nolint
# to calculate the inverse
T1 <- solve(A)  # nolint
    
# print the inverse of the matrix
print(T1)  # nolint

T2 <- t(T1) # nolint
inv(T2)


---------
cc4 <- c(2, 1, 3)
cc5 <- c(3, 2, 3)
cc6 <- c(7, 8, 2)
cc2 <- rbind(cc4, cc5, cc6)
print(cc2)


# Use the solve() function   # nolint # nolint
# to calculate the inverse
T1 <- solve(cc2)  # nolint
    
# print the inverse of the matrix
print(T1)  # nolint

T2 <- t(T1) # nolint
inv(T2)
