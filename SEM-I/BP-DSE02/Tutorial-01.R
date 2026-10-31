#27-10-26 Tut-01
x = 5.6
print(class(x))

x = as.integer(5)
print(class(x))

x = c(3,2,90,65,56)
print(x)

y = c(5,"a",67,"biophysics")
print(y)
y[2]

my_list <-list(name = "Apple", age = 30, score= c(90,85,88))
print(my_list)

m <- matrix(NA, nrow = 5 , ncol = 5)

print(m)
#for custom elements in the matrix.
m[1,] <- 1:5
m[2,] <- c("Physics","Math","Biology","English", "hindi")
m[3,] <- ("a","b","c","d")
print(m)

marks <- array(c(80,75,90,70,85,88,23,78,92,76,89,84), dim = c(2,3,2))
print(marks)

#Data frames
species = c("E.coli", "B.subtilis", "S.aureus","P.aeruginosa", "V.cholerae")
temperature = c(37, 30, 37, 25, 37)
H= c(7.0, 6.5, 7.2, 6.8, 7.5)
growth = c(0.85, 0.65, 0.78, 0.55, 0.90)

data <- data.frame(Speices = species,
                   Temperature = temperature,
                   Growth = growth,
                   pH = H)
print(data)
#Display the first three rows.
head(data,3)
print((data))
#Display only species column.
#data <- data[1]
data$Speices
print(data)
#Calculate the mean bacterial growth.
mean(data$Growth)
#Find out numbers of rows and colums
dim(data)
#find max and min growth
max(data$Growth)
min(data$Growth)
#Display species having growth more than 0.70.
data[data$Growth > 0.70,]
#Display species showing growth less than 37
data[data$Temperature < 37,]
#Adding a new column
data$Growth_percentage <- data$Growth*100

data[data$Temperature == 37 & data$Growth > 0.75, ]


