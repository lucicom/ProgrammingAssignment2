
##
## This function creates a special "matrix" object that can cache its inverse.
## 
## Param:   a matrix that is invertible
## 
## Return:  a list containing a functions to:
##          1. set the value of the matrix
##          2. get the value of the matrix
##          3. set the value of the inverse
##          4. get the value of the inverse
##

makeCacheMatrix <- function(x = matrix()) {
    
    ## initialize the inverse of 'x' (cache)
    inverse <- NULL
    
    ## set the matrix
    ## as the matrix is changing, also clear the cache
    set <- function(y) {
        x <<- y
        inverse <<- NULL
    }
    
    # get the matrix
    get <- function() x
    
    # set the inverse (cache it)
    setinverse <- function(solve) inverse <<- solve
    
    # get the cached inverse
    getinverse <- function() inverse
    
    # return a list with the 4 functions
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
    
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
    
    # read the cached inverse
    inv <- x$getinverse()
    
    # if already calculated, just return the value from the cache (and print a message)
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    
    # if not cached, calculate the inverse and store it in the cache
    data <- x$get()
    inv <- solve(data, ...)
    x$setinverse(inv)

    ## Return the matrix that is the inverse of 'x'
    inv
}
