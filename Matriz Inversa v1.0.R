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
