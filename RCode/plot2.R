data1 <- read.csv("C:/Users/JeetsPC-1/Desktop/Study Material/R DataSets/household_power_consumption.txt", header=TRUE, sep=";")
data1$Date=dmy(data1$Date)
data<-data1[(data1$Date >= "2007-02-01") & (data1$Date <= "2007-02-02"),]
data$Global_active_power=as.numeric(data$Global_active_power)
data$Moment=as.POSIXct(paste(data$Date, data$Time), format="%Y-%m-%d %H:%M:%S")
plot(data$Moment,data$Global_active_power,type = "l",lty=1,ylab="Global Active Power (kilowatts)")

