name <- c("Aman", "Ravi", "Priya", "Neha", "Rahul")
hindi <- c(50, 50, 50, 50, 50)
eng <- c(40, 40, 40, 40, 40)
math <- c(90,90,10,20,75)
sci <- c(80,95,65,45,85)
phy <- c(75,85,95,62,45)
chem <- c(58,94,56,48,85)

data = data.frame(
  Name = name,
  Hindi = hindi,
  English = eng,
  Math = math,
  Science = sci,
  Physics = phy,
  Chemistry = chem
  )
print(data)

#Calculate the percentage of ravi per subject
y <- data$Hindi[2]
perhindi <- (y/100)*100
print(perhindi)
x <- data$English[2]
pereng <- (x/100)*100
print(pereng)
z <- data$Math[2]
permath <- (z/100)*100
print(permath)
v <- data$Science[2]
persci <- (v/100)*100
print(persci)
m <- data$Physics[2]
perphy <- (m/100)*100
print(perphy)
n <- data$Chemistry[2]
perchem <- (n/100)*100
print(perchem)

#For this portion of code, x,z,v,m,n values are refered to as the values of individuals values of marks of Ravi.
#Creating a variable of total marks of ravi by using sum function, then checking the variable by print function
totalravi <- sum(x,z,v,m,n)
print(totalravi)
percentageravi <- (totalravi/500)*100
print(percentageravi)


a <- data$Hindi[1]
b <- data$English[1]
c <- data$Maths[1]
d <- data$Science[1]
e <- data$Physics[1]
f <- data$Chemistry[1]

total <- sum(a,b,c,d,e,f)
percen_1 <- (total/500)*100
print(percen_1)


a <- data$Hindi[2]
b <- data$English[2]
c <- data$Maths[2]
d <- data$Science[2]
e <- data$Physics[2]
f <- data$Chemistry[2]

total <- sum(a,b,c,d,e,f)
percen_2 <- (total/500)*100
print(percen_2)


a <- data$Hindi[3]
b <- data$English[3]
c <- data$Maths[3]
d <- data$Science[3]
e <- data$Physics[3]
f <- data$Chemistry[3]

total <- sum(a,b,c,d,e,f)
percen_3 <- (total/500)*100
print(percen_3)

a <- data$Hindi[4]
b <- data$English[4]
c <- data$Maths[4]
d <- data$Science[4]
e <- data$Physics[4]
f <- data$Chemistry[4]

total <- sum(a,b,c,d,e,f)
percen_4 <- (total/500)*100
print(percen_4)

a <- data$Hindi[5]
b <- data$English[5]
c <- data$Maths[5]
d <- data$Science[5]
e <- data$Physics[5]
f <- data$Chemistry[5]

total <- sum(a,b,c,d,e,f)
percen_5 <- (total/500)*100
print(percen_5)
percentagestd <- c(percen_1, percen_2, percen_3, percen_4, percen_5)

data <- data.frame(Name = name, 
                   Hindi = hindi,
                   English = eng,
                   Maths = math,
                   Science = sci,
                   Physics = phy,
                   Chemistry = chem,
                   percentage = percentagestd)
print (data)

data$percentage <- NULL # Null function deletes the column 
print(data)

# -4 indicates the deleting the 4 column of data frame
data <- data[-4]
print(data)

# How to delete rows in data frame [-1, tells R that we are working of rows now]
data <- data[-1,]
print(data)
