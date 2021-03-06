plot2 <- function(){

names = c("Date", "Time", "Global Active Power", "Global Reactive Power", "Voltage", "Global Intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3");
plotting <- read.table(file = "household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?", nrows = 2880, skip = 66636, col.names = names)
plotting$Time <- strptime(paste(plotting$Date, plotting$Time), format="%d/%m/%Y %H:%M:%S")


png(filename = "plot2.png", width = 480, height = 480, units = "px")
plot(plotting$Time, plotting$Global.Active.Power,  ylab="Global Active Power (kilowatts)", xlab = "", type = "l")
dev.off()

}
