# Equipo_Azul_Mineria-de-Datos
Materia de Mineria de Datos

# Mineria
# practice 2  find 20 more functions in R and make an example of it.

 # 1 mean(a:b) Find the mean of a range of numbers
>    mean(5:13)
[1] 9

 
 # 2 sd(x) standard deviation of x
  >         
  >         sd(8:2)
  [1] 2.160247


 # 3 length(x) returns the number of elements in an array
>    
>    x<-matrix(5:10,nrow=3,ncol=4)
>    
>    length(x)
[1] 12


# 4 is.matrix(x) returns T if the object is an array, F if it is not
>    
>    x<-matrix(2:2,nrow=4,ncol=2)
>    
>   is.matrix(x)
[1] TRUE

# 5 nchar(x) number of characters
>   
>      nchar("Data mining")
[1] 11

# 6 ceiling(x) Returns the first integer greater than x 
>      
>      ceiling(2.2)
[1] 3

# 7  trunc(x) Returns the integer part of x eliminating the decimals of a number
     trunc(52.8)

     [1] 52

# 8 max(vector) vector maximum value
>      x = c(1,5,100,7)
>      max(x)
[1] 100    

# 9 floor(x) Returns the first smallest integer of x
>      floor(1999.89)
[1] 1999

 # 10 diag(x) matrix diagonal
>      x<-matrix(1:4,nrow=6,ncol=4)
>      diag(x)
[1] 1 4 3 2
