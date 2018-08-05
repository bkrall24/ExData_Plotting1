plot3 <- function(){

names = c("Date", "Time", "Global Active Power", "Global Reactive Power", "Voltage", "Global Intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3");
plotting <- read.table(file = "household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?", nrows = 2880, skip = 66636, col.names = names)
plotting$Time <- strptime(paste(plotting$Date, plotting$Time), format="%d/%m/%Y %H:%M:%S")


png(filename = "plot3.png", width = 480, height = 480, units = "px")
plot(plotting$Time, plotting$Sub_metering_1,type = "l",col = "black", ylab = "Energy sub metering", xlab = "")
lines(plotting$Time,plotting$Sub_metering_2, type = "l", col = "red")
lines(plotting$Time,plotting$Sub_metering_3, type = "l", col = "blue")
legend("topright", legend = c("sub_metering_1", "sub_metering_2", "sub_metering_3"), lty = 1, col = c("black", "red", "blue"))
dev.off()
}

