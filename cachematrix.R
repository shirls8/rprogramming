## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  z<- x$getmatrix()
  if(!is.null(z)) {
    message("getting cached data")
    return(z)
  }
  matrix <- x$get()
  z<- solve(matrix, ...)
  x$setmatrix(z)
  z
}