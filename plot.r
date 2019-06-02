
rm(list=ls())   # Clears the environment , removes all the objects 

#Load the "breast-cancer-wisconsin.data.csv" from canvas into R

Cancerdataset<-read.csv("breast-cancer-wisconsin.data.csv", header=TRUE, na.strings = TRUE)
Cancerdataset
View(Cancerdataset)

#question I: Summarizing each column (e.g. min, max, mean ):
  
summary(Cancerdataset$F1)
summary(Cancerdataset$F2)
summary(Cancerdataset$F3)
summary(Cancerdataset$F4)
summary(Cancerdataset$F5)
summary(Cancerdataset$F6)
summary(Cancerdataset$F7)
summary(Cancerdataset$F8)
summary(Cancerdataset$F9)

 
#question II: Identifying missing values:
 
Cancerdataset[is.na(Cancerdataset)]
 
!is.na(Cancerdataset)
 
#question III: Replacing the missing values with the "mean" of the column.:
 
test<-Cancerdataset$F6
testnew<-Cancerdataset$F6[is.na(Cancerdataset$F6)]<-mean(Cancerdataset$F6, na.rm=TRUE)
test
Cancerdataset
View(Cancerdataset)

#question IV: Displaying the frequency table of "Class" vs. F6:

#install the packages for the frequency table
install.packages("plyr")
library(plyr)
y<-data.frame(class=Cancerdataset$Class, F6=test)
x<-count(y)
x

#question V: Displaying the scatter plot of F1 to F6, one pair at a time:

plot(Cancerdataset$F1~Cancerdataset$F2+Cancerdataset$F3+Cancerdataset$F4+Cancerdataset$F5+Cancerdataset$F6)
#please enter to see individual plot
plot(Cancerdataset$F2~Cancerdataset$F3+Cancerdataset$F4+Cancerdataset$F5+Cancerdataset$F6)
plot(Cancerdataset$F3~Cancerdataset$F4+Cancerdataset$F5+Cancerdataset$F6)
plot(Cancerdataset$F4~Cancerdataset$F5+Cancerdataset$F6)
plot(Cancerdataset$F5~Cancerdataset$F6)

#question VI: Show histogram box plot for columns F7 to F9:

hist(Cancerdataset$F7, main= "Histogram", xlab = "column F7")
boxplot(Cancerdataset$F7, main= "Boxplot", xlab = "column F7")

hist(Cancerdataset$F8, main= "Histogram", xlab = "column F8")
boxplot(Cancerdataset$F8, main= "Boxplot", xlab = "column F8")

hist(Cancerdataset$F9, main= "Histogram", xlab = "column F9")
boxplot(Cancerdataset$F9, main= "Boxplot", xlab = "column F9")
