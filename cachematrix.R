## These functions provide for solving the inverse of a matrix
## and caching the inverse of a matrix to prevent repeated
## calculation of the same matrix

## Given a paramter matrix a, returns a vector of functions that:
## 1. gets the value of the matrix
## 2. sets the value of the matrix
## 3. sets the value inverse of the matrix
## 4. gets the value inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {

}


## Given a parameter vector x (returned by the makeCacheMatrix function)
## returns the value of the inverse solution.
## Optimized so that if the inverse solution has been previously cached,
## the cached value is used instead of computing the inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
