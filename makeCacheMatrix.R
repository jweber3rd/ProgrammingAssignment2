makeCacheMatrix <- function(x = matrix()) {
        m <- NULL # define variable m
        set <- function(y) { # set the value of the matrix
                x <<- y
                m <<- NULL
        }
        get <- function() x # get the value of the matrix
        setmatrix <- function(solve) m <<- solve # set the value of the inverse matrix
        getmatrix <- function() m # get the value of the inverse matrix
        list(set = set, get = get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)
}
