## Lexical scoping 
## R-Programminc course Week 3 homework 

## This is lexical scoping function. It calculates the inverse of a matrix
## and it caches the inverse for later recall. 
makeCacheMatrix <- function(the_matrix = matrix()) {
  the_inv <- NULL
  set <- function(the_matrix) {
    the_mat <<- the_matrix
    the_inv <<- NULL
  }
  get <- function() the_mat
  setinverse <- function(the_inverse) the_inv <<- the_inverse
  getinverse <- function() the_inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(theMatrix, ...) {
        ## Return a matrix that is the inverse of 'x'
  invMatrix <- theMatrix$getinverse()
  if(!is.null(invMatrix)) {
    message("getting cached inverse")
    return(invMatrix)
  }
  tempVar <- theMatrix$get()
  invMatrix <- solve(tempVar)
  theMatrix$setinverse(invMatrix)
  invMatrix
  
}
