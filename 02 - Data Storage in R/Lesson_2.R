#----------------------------------------------------------------------------------------------------------------
#Lesson 2: Data Storage in R

###Setting the working directory
setwd("~/OneDrive/Research/R_Class/Rstats/02 - Data Storage in R")
getwd() #check working directory

###Importing Data
data = read.csv("HWA_Data.csv")
head(data)

Day = data$Day

###Learning about vectors (dataset where data is in same category --> chaacter or numeric)
Point <- seq(1,12)
point <- 1:12

#Character vectors
site <- c("A", "B", "C","A", "B", "C","A", "B", "C","A", "B", "C")
Site <- rep(c("A", "B","C"),4)

Location <-rep(c("Edge", "Interior"),each=3,length=12)
Duration <-rep(c("5","10"),each=6, length=12)

#Numeric Vectors
Species <- c(12,10,13,11,13,12,19,10,12,11,21,12)
length(Species) #check length of vector

#Logical Vector
logic <- Species > 20


