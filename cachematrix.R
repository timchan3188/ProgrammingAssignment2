## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                c_inv <<- NULL
        }
        get <- function() x
        setinv <- function(inv) c_inv <<- inv
        getinv <- function() m
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        l_inv <- x$getinv()
        if(!is.null(l_inv)) {
                message("getting cached data")
                return(l_inv)
        }
        data <- x$get()
        l_inv <- solve(data, ...)
        x$setinv(l_inv)
        l_inv

}
