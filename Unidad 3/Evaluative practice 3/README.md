# Practice 3


### Implement the Naive Bayes classification model with the dataset Social_Network_Ads.csv and using the e1071 library with the naiveBayes () function. Once the classifier is obtained, do the data visualization analysis correspondent.

```r
# we establish our workplace
getwd()
setwd("D:/Trabajos/noveno semestre/Mineria de datos/Practica evaluatoria 3/Practica evaluatoria 3")
getwd()


# Importing the dataset called Social_Network_Ads.csv
dataset = read.csv('Social_Network_Ads.csv')

# select the columns with which we are going to work
dataset = dataset[3:5]

#set the column Purchased as a factor
dataset$Purchased = factor(dataset$Purchased, levels = c(0, 1))

# install and import the library caTools
install.packages('caTools')
library(caTools)

# set our seed of randomness
set.seed(123)

# we divide our data set in two, a training group and a test group
split = sample.split(dataset$Purchased, SplitRatio = 0.75)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

# we normalize our data and scale it
training_set[-3] = scale(training_set[-3])
test_set[-3] = scale(test_set[-3])

#  We made our classifier with the help of the e1071 library and the Naive Bayes method, 
# Naive Bayes is a simple but powerful algorithm that works by calculating the prior probability and the posterior probability
library(e1071)
classifier = naiveBayes(formula = Purchased ~ .,
                 data = training_set,
                 type = 'C-classification',
                 kernel = 'linear')

# create our prediction on the y axis
y_pred = predict(classifier, newdata = test_set[-3])
y_pred

# Create the confusion matrix where we will have our real data and what we precede
cm = table(test_set[, 3], y_pred)
cm

#  We make the graph to visualize the information with the help of the ElemStatLearn library

# Visualising the Training set results

library(ElemStatLearn)
set = training_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = predict(classifier, newdata = grid_set)
plot(set[, -3],
     main = 'naiveBayes (Training set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))


# Visualising the Test set results
library(ElemStatLearn)
set = test_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = predict(classifier, newdata = grid_set)
plot(set[, -3], main = 'naiveBayes (Test set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))
````

### Naive Bayes is one of the simplest and most powerful algorithms for classification based on the Bayes theorem with an assumption of independence between the predictors, it assumes that the effect of a particular characteristic in a class is independent of other characteristics
