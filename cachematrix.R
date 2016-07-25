## Put comments here that give an overall description of what your
## functions do

## this function will take in a matrix, cache the value of the matrix,
## and find the inverse.

## This function takes in a matrix, it creates a list of functions that that will cache store
## and retrive the maxtrix value

makeCacheMatrix <- function(x = matrix()) {
    vari <- NULL
    set <- function(y) {
        x <<- y
        vari <<- NULL
    }
    get <- function() x
    setInv <- function(solve) vari <<- solve
    getInv <- function() vari
    list(set=set, get=get, setInv=setInv, getInv=getInv)
}


## This function will find the inverse of the matric that is passed to if from the previouse
## function if cacheSolve is not updated, it will return the inverse fo the cached value

cacheSolve <- function(x, ...) {
        vari <- x$getInv()
        if(!is.null(vari)){
            return(vari)
        }
        data <- x$get()
        vari <- solve(data)
        x$setInv(vari)
        vari
}
