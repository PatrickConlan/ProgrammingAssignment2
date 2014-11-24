## R Programming Assignment 2
## Scoping functionality used to create
## a cache for matrix inversion

## makeCacheMatrix - manages a cached Matrix "object"

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
}


## CacheSolve - inverts a cached matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
