setwd("C:\\Users\\USER\\Desktop\\IT24101024")
getwd()

##01. Import the dataset
Delivery_Times<-read.table("Exercise - Lab 05.txt",header=TRUE,sep=",") 

fix(Delivery_Times)
attach(Delivery_Times)

##02. Histogram for deliver times
hist(Delivery_Times$Delivery_Time_.minutes.,
     main = "Histogram for Delivery Times",
     xlab = "Delivery Times",
     breaks = seq(20, 70, by = 5),
     right = FALSE,
     col = "lightblue")

##04.A cumulative frequency polygon (ogive) for the data in a separate plot
breaks <- seq(20, 70, by = 5)

hist_data <- hist(Delivery_Times$Delivery_Time_.minutes., 
                  breaks = breaks, 
                  right = FALSE, 
                  plot = FALSE)

cum_freq <- cumsum(hist_data$counts)  # cumulative frequencies
plot(breaks[-1], cum_freq, type = "o", 
     main = "Cumulative Frequency Polygon (Ogive)", 
     xlab = "Delivery Time (minutes)", 
     ylab = "Cumulative Frequency", 
     col = "blue", pch = 16)


