library(dplyr)
setwd("F:/class4")
## Download data from   https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
data <-read.csv("./data/household_power_consumption.txt")

data<-read.table("./data/household_power_consumption.txt",sep = ';',header = TRUE, na.strings = "?")
newData<-data[data$Date=='1/2/2007' | data$Date=='2/2/2007' ,]
mutate(newData, Datetime = paste(Date,Time))
newData1 <- mutate(newData, Datetime = paste(Date,Time))
newData1$Datetime <-as.POSIXct(newData1$Datetime, format="%d/%m/%Y %H:%M:%S" )

png(file="plot2.png")
plot(newData1$Global_active_power ~ newData1$Datetime ,type="n",xlab='',ylab="Global Active Power (Killowatts)")
lines(newData1$Global_active_power ~ newData1$Datetime )
dev.off()