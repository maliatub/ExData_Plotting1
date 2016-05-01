setwd("F:/class4")
## Download data from   https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
data <-read.csv("./data/household_power_consumption.txt")

data<-read.table("./data/household_power_consumption.txt",sep = ';',header = TRUE, na.strings = "?")
newData<-data[data$Date=='1/2/2007' | data$Date=='2/2/2007' ,]

str(newData1)






#newData<-strptime(newData$Date,format="%d/%m/%Y")
newDate$Date<-strptime(newData$Date,format="%d/%m/%Y")


days<-weekdays(newDate$Date,abbreviate=TRUE )
newData$Date<-weekdays(newDate$Date,abbreviate=TRUE )


plot(newData$Date, newData$Global_active_power , type="n", main=heading) 

lines(newData$Date, newData$Global_active_power) 

with(newData,xy.coords(Date ~Global_active_power))

##newDate<-weekdays(as.Date(newData$Date))
head(newData)

hist(xy.coords( newData$Global_active_power ~ newData$Date)) 
sum(is.na(newData$Global_active_power))

plot(newData$Global_active_power ~ wday(newData$Date)  newData$Time ,type="n")
lines(newData$Global_active_power ~ wday(newData$Date) )

plot(wday(newData$Date) ~ newData$Global_active_power, type='n' )
lines( wday(newData$Date) ~ newData$Global_active_power  )
weekdays.POSIXt(newDate$Date)
days[1]<-newData$Date[1] + newData$Time[1]



format(newData$Date,"%d")

library(lubridate)
wday(newData$Date[1])
