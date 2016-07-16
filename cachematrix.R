## Program to cache the inverse of a matrix.


## Returns a list to functions to set and get the matrix and set and get the inverse if it.


makeCacheMatrix <- function(x = matrix()) {
  
  inv <- NULL
  set <- function(y) {
    x <<- y
    z <<- NULL
  }
  get = function() x
  setinverse = function(inverse) z <<- inverse 
  getinverse = function() z
  list(set=set, get=get, setinv=setinverse, getinv=getinverse)
}



## Function computes the inverse of the special "matrix" returned by makeCacheMatrix

cacheSolve <- function(x, ...) {

  inv<-x$getinv()
  
  if (!is.null(inv)){
    return(inv)
  }
  
  mat.data = x$get()
  inv = solve(mat.data, ...)
  x$setinv(inv)
  return(inv) ## Return a matrix that is the inverse of 'x'

}
        





