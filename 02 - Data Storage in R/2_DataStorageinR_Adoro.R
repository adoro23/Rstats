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


##Factors
SiteFactor <- factor(Site,levels=c("A", "B", "C"))
LocationFactor <- factor (Location, levels=c("Edge", "Interior"))
DurationFactor <- factor(Duration, levels = c("5", "10"))

##Creating a table
bird.table2 <- cbind (Point, Site, Location, Duration, Species)
as.data.frame(bird.table2)

#Exporting data frame
write.csv(bird.table2, "bird.table2.csv") #this send dataframe to your wd
Birds <- data.frame(Point, Site, Location, Duration, Species) #this makes a dataframe in your environment

last.row <- c(13, "A", "Edge","10", 39)
is.numeric(last.row)
is.character(last.row)
birds2 <- rbind(bird.table2, last.row)
