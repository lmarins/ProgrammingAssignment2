# ------------------------------------------------------------------------------
# last update: 20220415.2244
# ------------------------------------------------------------------------------

##----------------------------------------------------------------------------------------------------------------- # nolint
## makeCacheMatrix
## 
##----------------------------------------------------------------------------------------------------------------- # nolint
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

##----------------------------------------------------------------------------------------------------------------- # nolint
## cacheSolve
## Return a matrix that is the inverse of 'x' ## nolint
## solve: This generic function solves the equation a %*% x = b for x, where b can be either a vector or a matrix.
##----------------------------------------------------------------------------------------------------------------- # nolint
cacheSolve <- function(x, ...) { 
        m <- x$getSolve()
        if(!is.null(m)) {
                message("Getting cached Data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setSolve(m)
        m
}


cc1 <- c(1,3,5) 
cc2 <- c(4,6,9) 
cc3 <- c(2,9,1) 

cc <- rbind(cc1, cc2, cc3)
cc

myMatrix <- makeCacheMatrix(cc)
myMatrix$getSolve()
myMatrix$set(cc)
cacheSolve(myMatrix)