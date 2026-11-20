# Write an R program to print numbers from 10 to 1 in reverse order.
for (i in 10:1){
  print(i)
}
# Write an R program to print all even numbers between 1 and 20.
for (i in 1:20){
  if (i%%2 == 0)
    print(i)
}
# Write an R program to print all odd numbers between 1 and 15.
x <- 1:15
for (i in x){
  if (i%%2 != 0)
    print(i)
}
# Write an R program to print the multiplication table of 5.
y <- (1:10)
for (i in x){
  m <- i*5
  print(m)
}
# Write an R program to calculate the sum of numbers from 1 to 10 using a for loop.
sum <- 0
for (i in 1:10){
  sum <- sum + i
}
print(sum)
# Write an R program to calculate the factorial of 5 using a for loop.
f <- 1
x <- 1:5
for (i in x){
  f <- f*i
}
print(f)

factorial(5)
# Write an R program to calculate the square of each number from 1 to 10.
for ( i in 1:10){
  sq <- i^2
  print(sq)
}
# Bacterial growth over 5 days starting  with 100 cells.
for (i in 1:5){
  growth <- 100*(2^i)
  print(growth)
}
# Write an R program using a for loop to print each protein concentration.
protein <- c(10, 20, 30, 40, 50)
for (i in protein){
  print(i)
}
# 


