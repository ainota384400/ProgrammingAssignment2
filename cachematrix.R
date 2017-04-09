## Put comments here that give an overall description of what your
## functions do

## These functions were written as a Peer-graded Assignment in week3 of R programming coursera
## These functions create a mtrix and represent its inversed matrix

## Write a short comment describing this function
## makeCacheMatrix generates a matrix to calcurate its inverse matrix

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL　## initialize "inv" as null
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inv <<- mean
    getinverse <- function() inv
    list(set = set, get = get,
    setinverse = setinverse,
    getinverse = getinverse)
}

## Write a short comment describing this function
## cacheSolve creates the inversed matrix which is mentioned above

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinv()
        if(!is.null(inv)) {
            message("getting cached data")
            return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinverse(inv)
        return(inv)
}
