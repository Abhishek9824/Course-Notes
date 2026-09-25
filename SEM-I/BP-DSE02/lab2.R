#Question 1 find out the total marks and state wheather he is passed the exam or not.
name <- "rahul"
age <- 22

biology <- 78
bioinfo <- 85
stats <- 72

print( biology + bioinfo + stats )
print((bioinfo + biology + stats)/3)


#second part of the question 
passed <- biology >= 50 & bioinfo >= 50 & stats >= 50

print(passed) 


#Q2 create a vector with expression with value 12,18,25,15,30. find mean, median, std deviation,min value and max value


x <- c(12,18,25,15,30)

mean(x)
median(x)
max(x)
min(x)
sd(x)







