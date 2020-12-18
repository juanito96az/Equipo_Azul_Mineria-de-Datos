# K-Nearest Neighbors

### In this practice we will explain some observations of the K-Nearest Neighbors coding

### First we must assign our workplace, with the function getwd () we will verify the position of our directory, With the function setwd ("") we assign our workplace
```r 
getwd()
setwd("C:/Users/Rick/Documents/GitHub/DataMining/MachineLearning/KNN")
getwd()
```


### Once our workplace is established, the next thing is to import the data, we are assigning the information from the csv file called social_Network_Ads.csv to the variable called dataset.
```r
dataset = read.csv('Social_Network_Ads.csv')
```


### In the next line of code we are declaring that we will only work with columns 3 to 5 present in the dataset.
```r
cdataset = dataset[3:5]
```

###  We encode the destination function as a factor
```r
dataset$Purchased = factor(dataset$Purchased, levels = c(0, 1))
```

### We install and import the caTtools library
```r
install.packages('caTools')
library(caTools)
```
### We set our seed of randomness

```r
set.seed(123)
```

### We set our training data and our test data separate our dataset)
```r
split = sample.split(dataset$Purchased, SplitRatio = 0.75)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)
```

### We normalize our data

```r
training_set[-3] = scale(training_set[-3])
test_set[-3] = scale(test_set[-3])
```

### We install and import the randomForest library
```r
install.packages('randomForest')
library(randomForest)
```

### Adaptation of K-NN to the training set and prediction of the test set results
```r
 
library(class)
y_pred = knn(train = training_set[, -3],
             test = test_set[, -3],
             cl = training_set[, 3],
             k = 5,
             prob = TRUE)


```



### We create the confusion matrix
```r
  cm = table(test_set[, 3], y_pred)

```

### We visualize the results of the training sessions, for this we use the elemenStatLearn library that helps us to color our graph
```r
 
library(ElemStatLearn)
set = training_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = knn(train = training_set[, -3], test = grid_set, cl = training_set[, 3], k = 5)
plot(set[, -3],
     main = 'K-NN (Training set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))



```

### In the graph we can see that there are points and the color red and green, on the y axis we have the estimate of wages and on the other we have the age for the data to be correct they must be in the area of ​​the same color, that is, the red ones with the reds and the greens with the greens otherwise they would be erroneous data, we can see that in general most of the data is in its corresponding area although we have a small margin of error

![Alt text](https://github.com/juanito96az/Equipo_Azul_Mineria-de-Datos/blob/evidence/Unidad%203/KNN/knn1.png)


### We carry out the coding to make the diagram of the results of the test set
```r
 library(ElemStatLearn)
set = test_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = knn(train = training_set[, -3], test = grid_set, cl = training_set[, 3], k = 5)
plot(set[, -3],
     main = 'K-NN (Test set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))

```


![Alt text](https://github.com/juanito96az/Equipo_Azul_Mineria-de-Datos/blob/evidence/Unidad%203/KNN/Knn2.png)
