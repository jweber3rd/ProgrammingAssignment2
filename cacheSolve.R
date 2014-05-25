cacheSolve <- function(x=matrix(), ...) {
        m <- x$getmatrix()
        if(!is.null(m)) { # checks to see if the inverse matrix has already been calculated
                message("getting cached inverse matrix")
                return(m) # if inverse matrix exists, returns inverse matrix from the cache and skips the computation
        }
        matrix <- x$get()
        m <- solve(matrix, ...) # if inverse matrix does not exist, computes the inverse matrix
        x$setmatrix(m) # sets the value of the inverse matrix in the cache via the setmatrix function.
        m
}
