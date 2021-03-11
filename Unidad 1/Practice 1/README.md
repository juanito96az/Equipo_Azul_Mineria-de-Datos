# Practice 1

 Test the Law Of Large Numbers for N random normally distributed numbers with mean = 0, stdev=1:  
 Create an R script that will count how many of these numbers fall between -1 and 1 and divide
 by the total quantity of N

You know that E(X) = 68.2%
Check that Mean(Xn)->E(X) as you rerun your script while increasing N

   Hint:
  1. Initialize sample size
  2. Initialize counter
  3. loop for(i in rnorm(size))
  4. Check if the iterated variable falls
  5. Increase counter if the condition is true
  6. return a result <- counter / N

 ### 1. Initialize sample size
 ```r
 >  Numbers = 1:30
```
 ### 2. Initialize counter
```r
 > counter = 1
```
### 3. loop for(i in rnorm(size))
### 4. Check if the iterated variable falls
### 5. Increase counter if the condition is true
```scala
> for(i in rnorm(Numbers))
+            {
+              if(i > -1 & i< 1)
+              {
+                counter = counter+1
+              }
+            
+            }     
> 
```
### 6. return a result <- counter / N
```r
> result = counter / Numbers 

>   result
 [1] 21.0000000 10.5000000  7.0000000  5.2500000  4.2000000  3.5000000  3.0000000  2.6250000  2.3333333  2.1000000  1.9090909
[12]  1.7500000  1.6153846  1.5000000  1.4000000  1.3125000  1.2352941  1.1666667  1.1052632  1.0500000  1.0000000  0.9545455
[23]  0.9130435  0.8750000  0.8400000  0.8076923  0.7777778  0.7500000  0.7241379  0.7000000
>   
```
