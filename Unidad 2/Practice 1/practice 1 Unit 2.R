getwd()
setwd("D:/Trabajos/Mineria de datos/practicas unidad 2/Practica 1")
getwd()

movies <- read.csv("P2-Movie-Ratings.csv")
head(movies)
colnames(movies) <- c("Film", "Genre", "CriticRating", "AudienceRating", "BudgetMillions", "Year")
head(movies)

str(movies)
summary(movies)

#Convert numeric data to a factor
factor(movies$Year)
movies$Year <- factor(movies$Year)

# Aesthetics
library(ggplot2)

ggplot(data=movies, aes(x=CriticRating, y=AudienceRating))

# Add Geometry
ggplot(movies, aes(x=CriticRating, y=AudienceRating)) + 
  geom_point()

# Add Color
ggplot(movies, aes(x=CriticRating, y=AudienceRating, 
                   color=Genre)) + 
  geom_point()


# Add Size
ggplot(movies, aes(x=CriticRating, y=AudienceRating, 
                   color=Genre, size=BudgetMillions)) + geom_point()

# Investigate 5 geometry functions that can be added to the ggplot2 () function

# 1) geom_Jitter()

ggplot(movies, aes(x=CriticRating, y=AudienceRating, 
                   color=Genre, size=BudgetMillions)) + 
  geom_jitter()


# 2) geom_hex()

ggplot(movies, aes(x=CriticRating, y=AudienceRating, 
                   color=Genre, size=BudgetMillions)) + 	
  geom_hex()

# 3) geom_polygon()

ggplot(movies, aes(x=CriticRating, y=AudienceRating, 
                   color=Genre, size=BudgetMillions)) + 	
  geom_polygon()

# 4)  geom_bin2d()

ggplot(movies, aes(x=CriticRating, y=AudienceRating, 
                   color=Genre, size=BudgetMillions)) + 	
  geom_bin2d()

# 5) 	geom_quantile()
ggplot(movies, aes(x=CriticRating, y=AudienceRating, 
                   color=Genre, size=BudgetMillions)) + 	
  geom_quantile()

