#The Iris dataset is a classic multivariate dataset introduced by the British statistician and biologist Ronald Fisher in his 1936 paper. 
#It is widely used in statistics and machine learning as a benchmark for classification, clustering, and data visualization.
#scatter plot
plot(iris$Sepal.Length, iris$Petal.Length, main = "sepal length vs petal length", xlab = "sepal length", ylab = "petal length", pch = 19, col = "blue")
#Scatter plot with legends defined
plot(iris$Sepal.Length, iris$Petal.Length, col = iris$Species, pch = 19, main = "Iris species comparsion", xlab = "sepal length", ylab = "petal length")
legend("topleft", legend = levels(iris$Species), col = 1:3, pch=19)
#Line plot
plot(iris$Sepal.Length[1:30], type = "l", col ="red", lwd=2, main = "sepal length : First 30 observations", xlab = "observation number", ylab = "sepal lenth")
#Bar plot
species_count <- table(iris$Species)
barplot(species_count, main = "Number of flowers by species", xlab = "species", ylab = "Number of flower", col = c("orange", "skyblue","lightgreen"))
#Histogram
hist(iris$Sepal.Length, breaks = 10, col = "lightblue", border = "black", main = "Distribution of sepal length", xlab = "sepal length", ylab = "frequency")
#Box plot
boxplot(Sepal.Length ~ Species, data = iris, col = c("orange", "skyblue", "lightgreen"), main = "sepal length by species", xlab = "species", ylab = "sepal length")
#Pie chart
pie(table(iris$Species), main = "proportion of Iris species", col = c("tomato","gold","violet"))
#Density plot
plot(density(iris$Sepal.Length), main = "Density of sepal length", xlab = "sepal length", col = "dark green", lwd = 3)
#ggplot
library(ggplot2)
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length)) + geom_point(size = 2, col = "red")
