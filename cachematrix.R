## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x<<- y
    inv <<- NULL
  }
  get <- function() x
  setinv <- function(inverse_m) inv <<- inverse_m
  getinv <- function() inv
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- my_matrix$getinv()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  matrix_to_be_inverted <- x$get()
  inv <- solve(matrix_to_be_inverted)
  my_matrix$setinv(inv)
  inv
}


