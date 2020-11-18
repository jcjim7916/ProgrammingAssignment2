## Put comments here that give an overall description of what your
## functions do

## Crea una matriz especial que puede almacenar en caché su inversa

makeCacheMatrix <- function(M = matrix()) {

  a <- NULL
  set <- function(y){
    M <<- y
    a <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) a <<- inverse
  getInverse <- function() a
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}



## Esta función devuelve la inversa de la mariz, Usa la función anterior. 
## La inversa se calcula con la función solve()

cacheSolve <- function(x, ...) {
        
  a <- x$getInverse()
  if(!is.null(a)){
    message("getting cached data")
    return(a)
  }
  matriz <- x$get()
  a <- solve(matriz,...)
  x$setInverse(a)
  a
}
