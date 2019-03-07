## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv = NULL
  set = function(y) {       #set the set function
    x = y
    inv = NULL
  }
  get = function() x                      #set the get function
  setInverse = function() inv = solve(x)  #using solve for the inverse function to return the inverse
  getInverse = function() inv
  list(set = set,                         #set the list that holds the functions
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  
  m = x$getmean()    #get the mean from the previous function
  if(!is.null(m)){
    message("Get the cached data")
    return(m)
  }
  data = x$get()     #get the data from the list
  m = mean(data, ...)  #calc the mean
  x$setmean(m)
  m    ## Return a matrix that is the inverse of 'x'
}
