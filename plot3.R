library(dplyr)
setwd("F:/class4")
## Download data from   https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
data <-read.csv("./data/household_power_consumption.txt")

data<-read.table("./data/household_power_consumption.txt",sep = ';',header = TRUE, na.strings = "?")
newData<-data[data$Date=='1/2/2007' | data$Date=='2/2/2007' ,]
mutate(newData, Datetime = paste(Date,Time))
newData1 <- mutate(newData, Datetime = paste(Date,Time))
newData1$Datetime <-as.POSIXct(newData1$Datetime, format="%d/%m/%Y %H:%M:%S" )

png(file="plot3.png")
plot(newData1$Sub_metering_1 ~ newData1$Datetime ,type="n",xlab='',ylab="Energy Sub metering")
lines(newData1$Sub_metering_1 ~ newData1$Datetime,col="black" )
lines(newData1$Sub_metering_2 ~ newData1$Datetime,col="red" )
lines(newData1$Sub_metering_3 ~ newData1$Datetime ,col="blue")
legend("topright" , col=c("black","red","blue"),lty=1,legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()