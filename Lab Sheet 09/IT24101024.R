setwd("C:\\Users\\USER\\Desktop\\PS\\IT24101024_Lab_09")

#Q1
y <- rnorm(25, mean = 45, sd = 2)
print(y)

#Q2
t.test(y, mu=46 , alternative = "less")