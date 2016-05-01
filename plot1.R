setwd("F:/class4")
## Download data from   https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
data <-read.csv("./data/household_power_consumption.txt")

data<-read.table("./data/household_power_consumption.txt",sep = ';',header = TRUE, na.strings = "?")
newData<-data[data$Date=='1/2/2007' |data$Date=='2/2/2007' ,]
png(file="plot1.png")
hist(newData$Global_active_power,col='red',main = "Global Active Power", xlab ="Global Active Power(kilowatts)" )
dev.off()

