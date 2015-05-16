## Put comments here that give an overall description of what your
## functions do


##This function creates a special "matrix" 
##object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  
  ## initialize cachedM that will store
  ## cached matrix
  cachedMat <- NULL
  
  ## store a matrix
  setMat <- function(y) {    
    x <<- y    
    ##clear value
    cachedMat <<- NULL
  }
  
  ## return cached matrix
  getMat <- function() {
    x
  }
  
  ## store an inverted matrix
  setInv <- function (inv) {
    cachedMat <<- inv
  }
  
  ## return an inverted matrix
  getInv <- function() {
    cachedMat
    
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
        ## Return a matrix that is the inverse of 'x'
}
