## The function consists of 2 parts, one that is used to 
## set the value of the input matrix to a variable (set),to display it (get)
## and to find the inverse of the matrix.
## And another function to check if the matrix has been previously entered
## and to solve it if it hasn't been, or retrieve the cached value.

## This function is used to perform 2 operations, mainly to assign a matrix to 
## variable (set), and to display the matrix (get).

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
  x<<-y
  m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)

}


## This function is used to check if the matrix already exists, and if it does,
## it retrieves the cached value of the inverse of the matrix. if it doesnt,
## the mtrix is inverted using solve() and the result is displayed.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    matrix<-x$get()
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m

}
