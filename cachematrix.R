## cache the inverse of a matrix

## This function creates a special "matrix" object that can cache its inverse
## If the contents of a matrix are not changing, the inverse value can be cache and 
## the result can be displayed without recomputed. 

makeCacheMatrix <- function(x = matrix()) {
        
        ## The first function, makeVector creates a special "matrix", 
        ## which is really a list containing a function to
        ## 1. set the value of the matrix
        ## 2. get the value of the matrix
        ## 3. set the value of the inverse
        ## 4. get the value of the inverse
        
        
         # Initialize the inv variable
         inv <- NULL
         
         # set function
         # Sets the matrix itself but not the inverse
         set <- function(y) {
                x <<- y
                inv <<- NULL
         }
         
         #get function
         #get the matrix
         get <- function() x
         
         #set the inverse
         setinverse <- function(inverse) inv <<- inverse
         
         #get the inverse
         getinverse <- function() inv
         
         #create a list of the set, get, setinverse, and getinverse functions
         list(set = set, 
              get = get,
              setinverse = setinverse,
              getinverse = getinverse
         )
         
}



## This function computes the inverse of the special "matrix" returned by 
## makeCacheMatrix above. If the inverse has already been calculated 
## (and the matrix has not changed), then the cachesolve should retrieve the 
## inverse from the cache.

cacheSolve <- function(x, ...) {
        
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
        
        #Check if the inverse has been calculated
        if(!is.null(inv)) {
                
                #return the computed inverse
                message("getting cached data")
                return(inv)
        }
        
        #If inverse has not been calculated, get the matrix
        data <- x$get()
        
        #Calculate the inverse
        inv <- solve(data, ...)
        
        #Cache the inverse result
        x$setinverse(inv)
        
        #Return new inverse result
        inv
        
}
