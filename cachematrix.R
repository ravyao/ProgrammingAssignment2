## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
makeCacheMatrix <- function(x = matrix(sample(1:100,9),3,3)) {
  d <- NULL
  set <- function(y) {
    x <<- y
    d <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) d <<- solve
  getsolve <- function() d
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}

cacheSolve <- function(r, ...) {
  d <- x$getsolve()
  if(!is.null(d)) {
    message("getting inversed matrix")
    return(d)
  }
  data <- x$get()
  d <- solve(data, ...)
  x$setsolve(d)
  d
}
