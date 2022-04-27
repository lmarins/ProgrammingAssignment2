##----------------------------------------------------------------------------------------------------------------- # nolint
## last update: 20220426.2220
##----------------------------------------------------------------------------------------------------------------- # nolint

##----------------------------------------------------------------------------------------------------------------- # nolint
## Name         : makeCacheMatrix
## Description  : Return a matrix that is the inverse of 'x'                                                        # nolint
## Date         : 20220415.2244                                                                                     # nolint
## Date Update  : 20220426.2220
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
## Name         : cacheSolve
## Description  : Return a matrix that is the inverse of 'x'                                                        # nolint
## Date         : 20220415.2244                                                                                     # nolint
## Date Update  : 20220426.2220
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


cc1 <- c(3, 2, 5) 
cc2 <- c(2, 3, 2) 
cc3 <- c(5, 2, 4) 

cc <- rbind(cc1, cc2, cc3)
cc

myMatrix <- makeCacheMatrix(cc)
myMatrix$getSolve()
myMatrix$set(cc)
cacheSolve(myMatrix)