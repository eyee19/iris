getwd()
setwd("C:/Users/Everett/Desktop/R/cpsc298")

library(datasets)
summary(iris)
boxplot(iris$Sepal.Length)
plot(iris$Sepal.Length, iris$Sepal.Width)

dat <- iris
names(dat)
str(dat)
dat$new_class_species <- as.character(dat$Species)
dat$new_class_species <- NULL
dat$Species <- gsub("%", '"', dat$Species)
dat <- na.omit(dat)

summary(dat)
plot(dat)
plot(dat$Sepal.Length)
plot(dat, col = dat$Species)
legend(7, 4.3, unique(dat$Species), col = 1:length(dat$Species), pch = 1)
