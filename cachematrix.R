## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) { 
matinv<- NULL               # Initialize the matinv"(matrix inverse) variable to NULL
set<-function(y){           # Creates set function inside makeCacheMatrix enviroment
  x<<-y       # x is set for the enviroment 
  matinv<-NULL # set the matinv NULL inside makeCacheMatrix
}
get<-function()x # create get function inside  makeCacheMatrix assigning a matrix
setinv<-function(solve) matinv<<-solve # solve value assigned to matinv
getinv<-function()matinv #gives value of matinv inside of makeCacheMatrix enviroment
list (set=set, get=get,setinv=setinv, getinv=getinv) #Lists values of functions inside makeCacheMatrix enviroment
} 


## Write a short comment describing this function
cacheSolve<- function(x,...){
  matinv<-x$getinv() #assings matinv value from x enviroment
  if(!is.null(matinv)) { # check if matinv has been calculated before
    message ("getting cached data")# if so, print the message and...
    return (matinv)# ...print the value.
    
  }
  data <- x$getinv()# if not has been calculated before, get the value of x and...
  matinv <- solve(data,...)#...calculates the inverse matrix for  x
  x$setinv(matinv)# assign the inverse matrix to x
  matinv# print the inverse matrix
}

## Return a matrix that is the inverse of 'x'

