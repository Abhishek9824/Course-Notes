#lecture-01 Date-24/09/26

#Numeric Data type
r <- 5.6
print(class(r))

y <- 8
print(class(y))

#Integer Data type
x<- as.integer(5)
print(class(x))

#logical Data type
x<-3
y<-5
z<- x>y
print(z)
print(class(z))

#Complex Data type
x <- 4+3i
print(class(x))

#Character Data type
x<- "a"
print(x)
print(class(x))


#Vector (1D)
y<-c(1,2,3,4,5,6,7,8,9,10)
print(y)

#List examples
my_list <-list(name = "Apple", age = 30, score= c(90,85,88))

print(my_list)

#Matrix
m <- matrix(1:6, nrow = 2 , ncol = 3)
#excute using run then go console then type "m" you will get the matrix
marks <- array(c(80,75,90,70,85,88,23,78,92,76,89,84), dim = c(2,3,2))
# the dim means the dimension where 2 = rows, 3 = columns , last 2 = two matrices



