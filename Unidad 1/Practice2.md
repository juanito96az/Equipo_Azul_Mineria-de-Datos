# Equipo_Azul_Mineria-de-Datos
Materia de Mineria de Datos

# Mineria
# practice 2  find 20 more functions in R and make an example of it.

 # 1 mean(a:b) Find the mean of a range of numbers
>    mean(5:13)
>[1] 9

 
 # 2 sd(x) standard deviation of x
  >         
  >         sd(8:2)
  >[1] 2.160247


 # 3 length(x) returns the number of elements in an array
>    
>    x<-matrix(5:10,nrow=3,ncol=4)
>    
>    length(x)
>[1] 12


# 4 is.matrix(x) returns T if the object is an array, F if it is not
>    
>    x<-matrix(2:2,nrow=4,ncol=2)
>    
>   is.matrix(x)
>[1] TRUE

# 5 nchar(x) number of characters
>   
>      nchar("Data mining")
>[1] 11

# 6 ceiling(x) Returns the first integer greater than x 
>      
>      ceiling(2.2)
>[1] 3

# 7  trunc(x) Returns the integer part of x eliminating the decimals of a number
>     trunc(52.8)

>     [1] 52

# 8 max(vector) vector maximum value
>      x = c(1,5,100,7)
>      max(x)
>[1] 100    

# 9 floor(x) Returns the first smallest integer of x
>      floor(1999.89)
>[1] 1999

 # 10 diag(x) matrix diagonal
>      x<-matrix(1:4,nrow=6,ncol=4)
>      diag(x)
>[1] 1 4 3 2

 # 11 median(x) median of the elements of x
 >    x = c(1,2,3,4,5,8)
     
 >    median(x)

 # 12 solve(a) matrix inverse of a
>      x = c(1,2,3,4)
>      a<-matrix(x,nrow=2)
>      solve(a)
>     [,1] [,2]
>[1,]   -2  1.5
>[2,]    1 -0.5
> View(a)
> View(a)

# 13 min(x) minimum of the elements of x
>      x = c(2,100,3,15000,1,7,8)
>      min(x) 
>[1] 1


 # 14 tan(x) Tangente
>      
>      tan(13) 
>[1] 0.4630211
> 

 # 14 tan(x) Tangente
>      
>      tan(13) 
>[1] 0.4630211
 # 15 Order the components of x
>      x = c(5,9,7,100,25554,3,7,8,0.5,0.1,6)
>      sort(x)
> [1]     0.1     0.5     3.0     5.0     6.0     7.0     7.0     8.0     9.0   100.0 25554.0
> 

 # 16 round(x,n) round n digits
>      round(5.68744122456, 4)
>[1] 5.6874
> 

# 17 log(x) Natural logarithm of x
>      
>      log(12.7) 
>[1] 2.541602

# 18 sqrt(x) root of x
>      sqrt(5)
>[1] 2.236068

# 19 Exponential of x
>      exp(13)
>[1] 442413.4

# 20 range(x) Returns the maximum and minimum
>      
>      range(5 , 2 ,6 , 4 ,8 ,1 )
>[1] 1 8