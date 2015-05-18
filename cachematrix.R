## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        c_inv <- NULL
        set <- function(y) {
                x <<- y
                c_inv <<- NULL
        }
        get <- function() x
        setinv <- function(inv) c_inv <<- inv
        getinv <- function() c_inv
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        c_inv <- x$getinv()
        if(!is.null(c_inv)) {
                message("getting cached data")
                return(c_inv)
        }
        data <- x$get()
        c_inv <- solve(data, ...)
        x$setinv(c_inv)
        c_inv

}
