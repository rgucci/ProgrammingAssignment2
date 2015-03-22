## These functions provide for solving the inverse of a matrix
## and caching the inverse of a matrix to prevent repeated
## calculation of the same matrix

## Given a paramter matrix a, returns a vector of functions that:
## 1. gets the value of the matrix
## 2. sets the value of the matrix
## 3. sets the value inverse of the matrix
## 4. gets the value inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Given a parameter vector x (returned by the makeCacheMatrix function)
## returns the value of the inverse solution.
## Optimized so that if the inverse solution has been previously cached,
## the cached value is used instead of computing the inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}
