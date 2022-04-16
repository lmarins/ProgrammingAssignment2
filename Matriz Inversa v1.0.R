# ------------------------------------------------------------------------------
# last update: 20220415.2239
# ------------------------------------------------------------------------------

install.packages("matlab")
library(matlib)

a1 <- c(2,-2,-5)
a2 <- c(0,3,5)
a3 <- c(1,4,6)
myInvMatrix <- cbind(a1,a2,a3)
myInvMatrix

# inv() function is a built-in function in R which is especially used to find the inverse of a matrix.
inv(myInvMatrix)

# Calculate the determinant of a matrix in R, use the det() function. 
1/det(myInvMatrix)*adjoint(myInvMatrix)

#To transpose a matrix in R, use the t() method.
tm <- t(myInvMatrix)

#------------------------------------------------------------------------------------------------------
# R program to illustrate
# solve function
  
# Create 3 different vectors 
# using combine method. 
a1 <- c(3, 2, 5) 
a2 <- c(2, 3, 2) 
a3 <- c(5, 2, 4) 
    
# bind the three vectors into a matrix  
# using rbind() which is basically 
# row-wise binding
A <- rbind(a1, a2, a3) 
    
# print the original matrix 
print(A) 
    
# Use the solve() function  
# to calculate the inverse
T1 <- solve(A) 
    
# print the inverse of the matrix
print(T1) 

T2 <- t(T1)
inv(T2)
