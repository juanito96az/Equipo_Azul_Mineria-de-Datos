# multiple linear Regression

### In this practice we will explain some observations of the coding of multiple linear Regression

### First we must assign our workplace, with the function getwd () we will verify the position of our directory, With the function setwd ("") we assign our workplace
```r 
 
getwd()
setwd("C:/Users/Rick/Documents/GitHub/DataMining/MachineLearning/MultipleLinearRegression")
getwd()

```


### Once our workplace is established, the next thing is to import the data, we are assigning the information from the csv file called 50_Startups.csv
```r
dataset <- read.csv('50_Startups.csv')
```


###  Categorical data encoding
```r
dataset$State = factor(dataset$State,
                       levels = c('New York', 'California', 'Florida'),
                       labels = c(1,2,3))
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
split <- sample.split(dataset$Profit, SplitRatio = 0.8)
training_set <- subset(dataset, split == TRUE)
test_set <- subset(dataset, split == FALSE)
```

### We normalize our data

```r
training_set[, 1:2] <- scale(training_set[, 1:2])
test_set[, 1:2] <- scale(test_set[, 1:2])
```


### adaptation of multiple linear regression to the training set
```r
 
 
regressor = lm(formula = Profit ~ .,
               data = training_set )
summary(regressor)


```


### We make the prediction of the test data set
```r
 
y_pred = predict(regressor, newdata = test_set)
y_pred

```


### Building the optimal model using backward elimination
```r
  regressor = lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend + State,
               data = dataset )
summary(regressor)

regressor = lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend,
               data = dataset )
summary(regressor)

regressor = lm(formula = Profit ~ R.D.Spend + Marketing.Spend,
               data = dataset )
summary(regressor)

regressor = lm(formula = Profit ~ R.D.Spend + Marketing.Spend,
               data = dataset )
summary(regressor)

```

### Backward automation of delete function
```r 
backwardElimination <- function(x, sl) {
  numVars = length(x)
  for (i in c(1:numVars)){
    regressor = lm(formula = Profit ~ ., data = x)
    maxVar = max(coef(summary(regressor))[c(2:numVars), "Pr(>|t|)"])
    if (maxVar > sl){
      j = which(coef(summary(regressor))[c(2:numVars), "Pr(>|t|)"] == maxVar)
      x = x[, -j]
    }
    numVars = numVars - 1
  }
  return(summary(regressor))
}

```

