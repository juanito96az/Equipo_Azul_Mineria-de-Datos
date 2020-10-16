
# Practice 1, find 20 more functions in R and make an example of it.

   # 1 mean(a:b) Find the mean of a range of numbers
   mean(5:13)

   # 2 sd(x) standard deviation of x
        
        sd(8:2)
 
   
   # 3 length(x) returns the number of elements in an array
   
   x<-matrix(5:10,nrow=3,ncol=4)
   
   length(x)
   
   
   # 4 is.matrix(x) returns T if the object is an array, F if it is not
   
   x<-matrix(2:2,nrow=4,ncol=2)
   
  is.matrix(x)
  
  
  #5 nchar(x) number of characters
  
     nchar("Data mining")
  
  #6 ceiling(x) Returns the first integer greater than x 
     
     ceiling(2.2)
     
  #7 trunc(x) Returns the integer part of x eliminating the decimals of a number
     trunc(52.8)
  
  #8 max(vector) vector maximum value
     x = c(1,5,100,7)
     max(x)
     
  #9 floor(x) Returns the first smallest integer of x
     floor(1999.89)
     
  # 10 diag(x) matrix diagonal
     x<-matrix(1:4,nrow=6,ncol=4)
     diag(x)
     
  # 11 median(x) median of the elements of x
     x = c(1,2,3,4,5,8)
     
     median(x) 
  # 12 solve(a) matrix inverse of a
     x = c(1,2,3,4)
     a<-matrix(x,nrow=2)
     solve(a)
     
  # 13 min(x) minimum of the elements of x
     x = c(2,100,3,15000,1,7,8)
     min(x) 
     
  # 14 tan(x) Tangente
     
     tan(13) 
     

  # 15 Order the components of x
     x = c(5,9,7,100,25554,3,7,8,0.5,0.1,6)
     sort(x)
     
  # 16 round(x,n) round n digits
     round(5.68744122456, 4)
  
  # 17 log(x) Natural logarithm of x
     
     log(12.7) 
     
  # 18 sqrt(x) root of x
     sqrt(5)
 
  # 19 Exponential of x
     exp(13)
     
  # 20 range(x) Returns the maximum and minimum
     
     range(5 , 2 ,6 , 4 ,8 ,1 )
     