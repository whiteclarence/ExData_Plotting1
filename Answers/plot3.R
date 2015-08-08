plot3 <- function() {
	setwd("C:/Users/Clarence/Downloads/Coursera/Data Science/Course 4/Week 1")
	hpc <- read.table("household_power_consumption.txt", header=TRUE, sep = ";", na.strings = "?", colClasses = c("character","character", "factor", "factor", "factor", "factor", "factor", "factor", "factor"))
	hpc <- subset(hpc, Date == "1/2/2007" | Date == "2/2/2007")
	hpc$DateTime <- paste(hpc$Date, hpc$Time, sep = " ")
	hpc$DateTime <- strptime(hpc$DateTime, format = "%d/%m/%Y %H:%M:%S")
	png(file = "plot3.png")
	plot(hpc$DateTime, as.numeric(hpc$Sub_metering_1), type = "l", ylab = "Energy sub metering", xlab = NA)
	lines(hpc$DateTime, as.numeric(hpc$Sub_metering_2), col = "red")
	lines(hpc$DateTime, as.numeric(hpc$Sub_metering_3), col = "blue")
	legend("topright", legend = c("Sub_metering_1", "Sub_metering_2","Sub_Metering_3"), lty = 1, col = c("black","red","blue"))
	dev.off()
}