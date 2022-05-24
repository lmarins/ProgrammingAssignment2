##----------------------------------------------------------------------------
## Name         : makeCacheMatrix
## Description  : Creates a special matrix object that can cache its inverse
## Date         : 20220415.2244
## Date Update  : 20220519.2133
##----------------------------------------------------------------------------
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setSolve <- function(solve) m <<- solve
        getSolve <- function() m
        list(
                set = set,
                get = get,
                setSolve = setSolve,
                getSolve = getSolve
        )
}

##----------------------------------------------------------------------------
## Name       : cacheSolve
## Description: omputes the inverse of the special "matrix" returned by
##              makeCacheMatrix above. If the inverse has already been
##              calculated (and the matrix has not changed), then the
##              cachesolve should retrieve the inverse from the cache
## Date       : 20220415.2244
## Date Update  : 20220519.2133
##----------------------------------------------------------------------------
cacheSolve <- function(x, ...) { # nolint
        m <- x$getSolve()
        if (!is.null(m)) {
                message("<-- Getting cached Solve Data -->")
                return(m)
        }
        data <- x$get()
        # Print the inverse of the matrix!
        m <- solve(data, ...)
        x$setSolve(m)
        m
}
##----------------------------------------------------------------------------
## Pruebas
##----------------------------------------------------------------------------
cc1 <- c(3, 2, 5)
cc2 <- c(2, 3, 2)
cc3 <- c(5, 2, 4)
cc <- rbind(cc1, cc2, cc3)
print(cc)

cc4 <- c(2, 1, 3)
cc5 <- c(3, 2, 3)
cc6 <- c(7, 8, 2)
cc2 <- rbind(cc4, cc5, cc6)
print(cc2)

myMatrix <- makeCacheMatrix(cc) 
myMatrix$getSolve()
myMatrix$set(cc)
cacheSolve(myMatrix)

myMatrix <- makeCacheMatrix(cc2) 
myMatrix$getSolve()
myMatrix$set(cc2)
cacheSolve(myMatrix)
