cacheSolve <- function(x=matrix(), ...) {
        m <- x$getmatrix()
        if(!is.null(m)) {
                message("getting cached inverse matrix")
                return(m)
        }
        matrix <- x$get()
        m <- mean(matrix, ...)
        x$setmatrix(m)
        m
}
