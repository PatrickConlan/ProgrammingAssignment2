## R Programming Assignment 2
## Lexical scoping properties used to create
## a cache for the inverse of a matrix 
## see: http://www.mathwords.com/i/inverse_of_a_matrix.htm

## makeCacheMatrix - manages a cached Matrix "object"

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setInvert <- function(invert) m <<- invert
    getInvert <- function() m
    list(set = set, get = get, setInvert = setInvert,
         getInvert = getInvert)
}


## CacheSolve - inverts a cached matrix

cacheSolve <- function(x, ...) {
    m <- x$getInvert() # have we cached the value?
    if(!is.null(m)) {
        message("getting data from cache")
        return(m)
    }
    data <- x$get() # no cache, so get the data
    m <- solve(data, ...)
    x$setInvert(m) # cache it and return the value
    m
}
