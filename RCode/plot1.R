
data1 <- read.csv("C:/Users/JeetsPC-1/Desktop/Study Material/R DataSets/household_power_consumption.txt", header=TRUE, sep=";")
data1$Date=dmy(data1$Date)
data<-data1[(data1$Date >= "2007-02-01") & (data1$Date <= "2007-02-02"),]
data$Global_active_power=as.numeric(data$Global_active_power)
hist(data$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
library(lubridate)
