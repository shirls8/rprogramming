## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Create a new matrix that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  z <- NULL
  set <- function(y) {
    x <<- y
    z <<- NULL
  }
  get <- function() x
  setmatrix <- function(solve) z <<- solve
  getmatrix <- function() z
  list(set = set, get = get, setmatrix = setmatrix, getmatrix = getmatrix)
}


## Write a short comment describing this function
## Calculate a matrix that is the inverse and cache it

cacheSolve <- function(x, ...) {
  ## Return inverse if it is cached
  z<- x$getmatrix()
  if(!is.null(z)) {
    message("getting cached data")
    return(z)
  }
  ## Calculate inverse and cache it
  matrix <- x$get()
  z<- solve(matrix, ...)
  x$setmatrix(z)
  z
}
