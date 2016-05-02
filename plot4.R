library(dplyr)
setwd("F:/class4")
## Download data from   https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip


data<-read.table("./data/household_power_consumption.txt",sep = ';',header = TRUE, na.strings = "?")
newData<-data[data$Date=='1/2/2007' | data$Date=='2/2/2007' ,]
mutate(newData, Datetime = paste(Date,Time))
newData1 <- mutate(newData, Datetime = paste(Date,Time))
newData1$Datetime <-as.POSIXct(newData1$Datetime, format="%d/%m/%Y %H:%M:%S" )

png(file="plot4.png")

par(mar =c(4,4,2,2) ,mfrow=c(2,2))
plot(newData1$Global_active_power ~ newData1$Datetime ,type="n",xlab='',ylab="Global Active Power (Killowatts)")
lines(newData1$Global_active_power ~ newData1$Datetime )

plot(newData1$Voltage ~ newData1$Datetime,type="n",xlab="datetime",ylab = "Voltage" )
lines(newData1$Voltage ~ newData1$Datetime)

plot(newData1$Sub_metering_1 ~ newData1$Datetime ,type="n",xlab='',ylab="Energy Sub metering")
lines(newData1$Sub_metering_1 ~ newData1$Datetime,col="black" )
lines(newData1$Sub_metering_2 ~ newData1$Datetime,col="red" )
lines(newData1$Sub_metering_3 ~ newData1$Datetime ,col="blue")
legend("topright" , col=c("black","red","blue"),lty=1,legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

plot(newData1$Global_reactive_power ~ newData1$Datetime ,type="n",xlab='datetime',ylab="Global_reactive_power")
lines(newData1$Global_reactive_power ~ newData1$Datetime )


dev.off()