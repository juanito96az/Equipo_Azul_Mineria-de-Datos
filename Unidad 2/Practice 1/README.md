# Practice 1

## Investigate 5 geometry functions that can be added to the ggplot2 () function


### we must first import the data

```r
getwd()
setwd("D:/Trabajos/Mineria de datos/practicas unidad 2/Practica 1")
getwd()

movies <- read.csv("P2-Movie-Ratings.csv")
```

### we rename the columns to make them look more aesthetic
```r
colnames(movies) <- c("Film", "Genre", "CriticRating", "AudienceRating", "BudgetMillions", "Year")
head(movies)
```
### Convert numeric data to a factor
```r
factor(movies$Year)
movies$Year <- factor(movies$Year)
```

### We call the library that we are going to use
```r
library(ggplot2)
```
###  we create our scatter plot with the ggplot function adding color and size

```r
ggplot(movies, aes(x=CriticRating, y=AudienceRating, 
                   color=Genre, size=BudgetMillions)
```

### add geometry

### 1) geom_Jitter()
```r
ggplot(movies, aes(x=CriticRating, y=AudienceRating, 
                   color=Genre, size=BudgetMillions)) + 
  geom_jitter()
```
![Alt text](https://github.com/juanito96az/Equipo_Azul_Mineria-de-Datos/blob/evidence/Unidad%201/Practica%20evaluatoria%201/Diagrama%20de%20dispesion%201960.png "1960")


### 2) geom_hex()
```r
ggplot(movies, aes(x=CriticRating, y=AudienceRating, 
                   color=Genre, size=BudgetMillions)) + 	
  geom_hex()
```
![Alt text](https://github.com/juanito96az/Equipo_Azul_Mineria-de-Datos/blob/evidence/Unidad%201/Practica%20evaluatoria%201/Diagrama%20de%20dispesion%201960.png "1960")


### 3) geom_polygon()
```r
ggplot(movies, aes(x=CriticRating, y=AudienceRating, 
                   color=Genre, size=BudgetMillions)) + 	
  geom_polygon()
```
![Alt text](https://github.com/juanito96az/Equipo_Azul_Mineria-de-Datos/blob/evidence/Unidad%201/Practica%20evaluatoria%201/Diagrama%20de%20dispesion%201960.png "1960")


### 4)  geom_bin2d()
```r
ggplot(movies, aes(x=CriticRating, y=AudienceRating, 
                   color=Genre, size=BudgetMillions)) + 	
  geom_bin2d()

```
![Alt text](https://github.com/juanito96az/Equipo_Azul_Mineria-de-Datos/blob/evidence/Unidad%201/Practica%20evaluatoria%201/Diagrama%20de%20dispesion%201960.png "1960")


### 5) 	geom_quantile()
```r
ggplot(movies, aes(x=CriticRating, y=AudienceRating, 
                   color=Genre, size=BudgetMillions)) + 	
  geom_quantile()
```
![Alt text](https://github.com/juanito96az/Equipo_Azul_Mineria-de-Datos/blob/evidence/Unidad%201/Practica%20evaluatoria%201/Diagrama%20de%20dispesion%201960.png "1960")

