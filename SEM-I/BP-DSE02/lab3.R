#Q1 Create a list of number from 1 to 100 in a variable.
x <- (1:100)
print(x)

#Q2 Create a list of odd/even number 
x <- (1:100)
for (i in x) {
  if (i%%2 != 0)
  {print (i)}
}


x <- (1:100)
for (i in x) {
  if (i%%2 == 0)
  {print(i)}
}

#Q3 Find out the sums of all numbers.
y <- (1:100)
sum (y)

#Q4 Find out the multipled values of all numbers.
x <- (1:100)
for (i in x){
  product <- i*(i+1)
  print(product)
  
}
# Q5 Find out the square values of all numbers
x <- 1:100
for (i in x) { m<-(i^2)
print (m)

}

# Q6 Given x<-c(12,7,25,8,19,30,4) find the largest value without using function max()
x<-c(12,7,25,8,19,30,4)
l <- x[1]
print(l)
for (i in x) { if (i>l)
  l <- i
}
print (l)

#for minimum value wihtout using function min()
x<-c(12,7,25,8,19,30,4)
l <- x[1]
print(l)
for (i in x) { if (i<l)
  l <- i
}
print (l)

# Create a list of numbers from 1 to 100 and tell if a number is +ve or -ve.
x <- -5:5

for (i in x) {
  if (i > 0) {
    print("Positive")
  } else {
    print("Negative")
  }
}