plot1 <- function(){

names = c("Date", "Time", "Global Active Power", "Global Reactive Power", "Voltage", "Global Intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
plotting <- read.table(file = "household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?", nrows = 2880, skip = 66636, col.names = names);
plotting$Date <- strptime(plotting$Date, format = "%d/%m/%Y");


png(filename = "plot1.png", width = 480, height = 480, units = "px")
hist(plotting$Global.Active.Power, breaks=12, xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power", col="red");
dev.off()
}