#Print 1-10 using while loop
i <- 1
while (i<=10) {
  print(i)
  i<- i+1
}
# Print 10-1 in reversed order.
i <- 10
while (i<=1) {
  print(i)
  i<- i-1
}
#Find out the odd number from 1 to 20.
i <- 2
while (i <= 20){
  print(i)
  i <- i+2
}

# Create a data frame for 5 student (Aman,Ravi,Priya,Neha and Rahul) for subject of Hindi,english.math,science,physics and chemistry.
Name <- c("Aman","Ravi","Priya","Neha","Rahul")
Hindi <- c(78,90,67,90,87)
English <-c(90,65,67,69,90)
math <- c(32,90,76,78,34)
science <- c(90,90,90,90,90)
physics <- c(78,90,67,56,89)

marks <- data.frame(
  Name = Name,
  Hindi = Hindi,
  English = English,
  Math = math,
  Science = science,
  physics = physics
)

print(marks) 

# Create a data frame for 5 student (Aman,Ravi,Priya,Neha and Rahul) for subject of Hindi,english.math,science,physics and chemistry.
Name <- c("Aman","Ravi","Priya","Neha","Rahul")
Hindi <- c(78,90,67,90,87)
English <-c(90,65,67,69,90)
math <- c(32,90,76,78,34)
science <- c(90,90,90,90,90)
physics <- c(78,90,67,56,89)


marks <- data.frame(
  Name = Name,
  Hindi = Hindi,
  English = English,
  Math = math,
  Science = science,
  physics = physics
)


print(marks) 
