# Simple Linear regression

### In this practice we will explain some observations of Simple Linear regression coding

### First we must assign our workplace, with the function getwd () we will verify the position of our directory, With the function setwd ("") we assign our workplace
```r 
 
getwd()
setwd("C:/Users/Rick/Documents/GitHub/DataMining/MachineLearning/SimpleLinearRegression")
getwd()

```


### Once our workplace is established, the following is to import the data, we are assigning the information from the csv file called Salary_Data.csv
```r
dataset <- read.csv('Salary_Data.csv')
```



#

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
 
split <- sample.split(dataset$Salary, SplitRatio = 2/3)
training_set <- subset(dataset, split == TRUE)
test_set <- subset(dataset, split == FALSE)

```

### adaptation of simple linear regression to the training set

```r
 
regressor = lm(formula = Salary ~ YearsExperience,
               data = dataset)
summary(regressor)

```

### We make the prediction of the test data set
```r
y_pred = predict(regressor, newdata = test_set)
```

### We make the prediction of the test data set
```r
 
y_pred = predict(regressor, newdata = test_set)
y_pred


```



### We create the confusion matrix
```r
  cm = table(test_set[, 3], y_pred)

```

### We import the ggplot2 library
```r
  library(ggplot2)

```

### Viewing Training Set Results
```r
 
library(ggplot2)
ggplot() +
  geom_point(aes(x=training_set$YearsExperience, y=training_set$Salary),
             color = 'red') +
  geom_line(aes(x = training_set$YearsExperience, y = predict(regressor, newdata = training_set)),
            color = 'blue') +
  ggtitle('Salary vs Experience (Training Set)') +
  xlab('Years of experience') +
  ylab('Salary')


```


![Alt text](https://github.com/juanito96az/Equipo_Azul_Mineria-de-Datos/blob/evidence/Unidad%203/LogisticRegression/LogisticRegression5.png)


### Viewing Test Set Results
```r
 ggplot() +
  geom_point(aes(x=test_set$YearsExperience, y=test_set$Salary),
             color = 'red') +
  geom_line(aes(x = training_set$YearsExperience, y = predict(regressor, newdata = training_set)),
            color = 'blue') +
  ggtitle('Salary vs Experience (Test Set)') +
  xlab('Years of experience') +
  ylab('Salary')

```


![Alt text](https://github.com/juanito96az/Equipo_Azul_Mineria-de-Datos/blob/evidence/Unidad%203/LogisticRegression/LogisticRegression6.png)

