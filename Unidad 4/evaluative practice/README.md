# evaluative practice practice 4

### establish our workplace
```r
getwd()
setwd("D:/Trabajos/noveno semestre/Mineria de datos/Practica evaluatoria 4")
```
### import of the data with which we are going to work
```r
dataset = read.csv('iris.csv')
dataset = dataset[1:4]
```

### We create a vector variable and then a for loop which will save the sum of squares in the variable with the help of k-means
```r
wcss = vector()
for (i in 1:10) wcss[i] = sum(kmeans(dataset, i)$withinss)
```
### We make the plot to be able to visualize the graph and find the elbow
```r
plot(1:10,
     wcss,
     type = 'b',
     main = paste(''),
     xlab = 'Number of clusters',
     ylab = 'WCSS')
```
![Alt text](https://github.com/juanito96az/Equipo_Azul_Mineria-de-Datos/blob/evidence/Unidad%204/evaluative%20practice/g1.png)


### set our seed of randomness
```r
set.seed(29)
```
### Fitting K-Means to the dataset
```r
kmeans = kmeans(x = dataset, centers = 3)
```
### make the prediction
```r
y_kmeans = kmeans$cluster
```
### Visualising the clusters

### we install and import the cluster library
```r
install.packages('cluster')
library(cluster)++
```
### we install and import the cluster library
```r
clusplot(dataset,
         y_kmeans,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Clusters of flowers'),
         xlab = 'Width',
         ylab = 'length')
```

![Alt text](https://github.com/juanito96az/Equipo_Azul_Mineria-de-Datos/blob/evidence/Unidad%204/evaluative%20practice/g2.png)

