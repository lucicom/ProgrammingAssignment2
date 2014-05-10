
##
## This function creates a special "matrix" object that can cache its inverse.
## 
## Param:   a matrix that is invertible
## 
## Return:  a list containing a functions to:
##          1. set the value of the vector
##          2. get the value of the vector
##          3. set the value of the mean
##          4. get the value of the mean
##

makeCacheMatrix <- function(x = matrix()) {

}


## 
## This function computes the inverse of the special "matrix" returned by 
## makeCacheMatrix above. If the inverse has already been calculated (and 
## the matrix has not changed), then the cachesolve should retrieve the 
## inverse from the cache.
## 
## Param:   a special "matrix" created with makeCacheMatrix
##
## Return:  a matrix that is the inverse of 'x'
## 

cacheSolve <- function(x, ...) {
    
    ## Return a matrix that is the inverse of 'x'
}
