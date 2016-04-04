#the first function, makeCacheMatrix has the matrix x
#where x is an ivertable matrix
#the function will set the value of the matrix
#get the value of the matrix
#set the value of the inverse
#get the value of the inverse


 makeCacheMatrix<-function(x=matrix()){           
            Inv <-NULL
            SET<-function(y){
                  x<<-y
                  Inv <<-NULL
          }
          get<-function() x
             setInvr<-function(inverse) Inv <<-inverse
             getInvr<-function( )Inv 
             list (set =set, get=get,
                   setInvr=setInvr,
                 getInvr=getInvr)
   }

#the second function calculates the inverse of the matrix 
 #created in makeCacheMatrix
 #it checks to see if the the inverse has been calculated
 #if the inverse has been calculate cashSolve skipes the #computation
#Else this function calculated the inverse and sets the value
 #of the inverse in the cache via the setInvr function
 

#x is the matrix from makeCacheMatrix
cashSolve<-function(x, ...) {
          Inv <-x$getInvrs()
          #determines if the inverse has been calculated
              if(!is.null(Inv) ){
             message("getting cached data")
                  
             return(Inv)
              }
# if the inverse has not been calculated then it happens
#using the function get
         data <-x$get()
          Inv <- inverse(data,...)
        x$setInvrs(Inv)
        Inv #returns the inverse 
}