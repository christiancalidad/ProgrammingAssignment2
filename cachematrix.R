## Calculate and storage inverse of a matrix, if matrix calculate again inverse over
## the same matrix then it gets the storaged object

## create a list with necessary functions for saving and showing objectsa


makeCacheMatrix <- function(a) {
      inverse <- NULL
      set <- function(y) {
            a <<- y
            inverse <<- NULL
      }
      get <- function() a
      setinv <- function(solve) inverse <<- solve
      getinv <- function() inverse
      list(set = set, get = get,
           setinv = setinv,
           getinv = getinv)
}


## Gets storaged object if extist, else It caculates and storages them

cacheSolve <- function(matrix, ...) {
      inverse <- x$getinv()
      if(!is.null(inverse) & identical(matrix,x$get())) {
            message("getting cached data")
            return(inverse)
      }
      data <- x$get()
      inverse <- solve(matrix,...)
      x$setinv(inverse)
      inverse
}


