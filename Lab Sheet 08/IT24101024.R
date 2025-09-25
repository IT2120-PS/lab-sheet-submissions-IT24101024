setwd("C:\\Users\\it24101024\\Desktop\\IT24101024")

#01
data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data)
attach(data)

#population mean
popmn <- mean(Weight.kg.)
popmn


#population standard deviation
popsd <- sd(Weight.kg.)
popsd


#02
samples <-c()
n <- c()

for(i in 1:25){
  s<-sample(Weight.kg.,6,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S', i))
}

colnames(samples)=n

#sample mean
s.means <- apply(samples,2,mean)
s.means

#sample standard deviation
s.sds <- apply(samples,2,sd)
s.sds


#03

#Calculate mean and standard deviation of sample means stored in "s.means" variable
samplemean <- mean(s.means)
samplemean

samplesds <- sd(s.means)
samplesds

#Compare the population mean and Mean of Sample means
popmn
samplemean

#Compare the population standard deviation and standard deviation of Sample means
truesd = popsd / sqrt(6)
truesd
samplesds

