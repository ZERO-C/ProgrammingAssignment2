## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function
##################################################################
## The following functions calculate the inverse of a matrix and saves it
## to the cache such that the next time the user attempts to calculate the
## matrix inverse, the previously saved value is returned instead of
## repeating the calculation.
###################################################################


makeCacheMatrix <- function(x = matrix()) {
## define the cache
i <- NULL
## Method to set the matrix
set <- function( matrix ) {
m <<- matrix
i <<- NULL
}
## Method the get the matrix
get <- function() {
## Return the matrix 
m
}
## Method to set the inverse of the matrix
setInverse <- function(inverse) {
i <<- inverse
}
## Method to get the inverse of the matrix
getInverse <- function() {
## Return the inverse property
i
}
## Return a list of the methods
list(set = set, get = get,
setInverse = setInverse,
getInverse = getInverse)
}
##The following function calculates the inverse of the special "matrix" created
## with the above function. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
m <- x$getInverse()
if( !is.null(m) ) {
message("getting cached data")
return(m)
}
## Get the matrix from our object
data <- x$get()
## Calculate the inverse using matrix multiplication
m <- solve(data) %*% data
## Set the inverse to the object
x$setInverse(m)
## Return the matrix
m

}
