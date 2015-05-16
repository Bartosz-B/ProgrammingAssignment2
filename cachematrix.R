## Put comments here that give an overall description of what your
## functions do


##This function creates a special "matrix" 
##object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  
  ## initialize cachedMat that will store
  ## cached matrix
  cachedMat <- NULL
  
  ## store a matrix
  setMat <- function(newMat) {  
    ##store matrix
    cachedMat <<- newMat    
    ##clear value
    cachedInv <<- NULL
  }
  
  ## return cached matrix
  getMat <- function() {
    cachedMat
  }
  
  ## store an inverted matrix
  setInv <- function (inv) {
    cachedInv <<- inv
  }
  
  ## return an inverted matrix
  getInv <- function() {
    cachedInv    
  }

  ## return list
  list(setMat = setMat, 
       getMat = getMat,
       setInv = setInv,
       getInv = getInv)

}


## This function computes the inverse of the special 
## "matrix" returned by makeCacheMatrix. 
## If the inverse has already been calculated 
## (and the matrix has not changed), 
## then the cachesolve retrieves the inverse from the cache

cacheSolve <- function(x, ...) {
  
  # try to get cached inverted matrix
  inv <- x$getInv()
  
  # if inverted matrix was cached, return it
  if(!is.null(inv)) {
    message("getting cached inverted matrix")
    return(inv)
  }
  
  # if not, get matrix, invert it and store
  mat <- x$getMat()  
  inv <- solve(mat)  
  x$setInv(inv)
  
  ## Return a matrix that is the inverse of 'x'  
  inv
}
