plot2 <- function() {
	setwd("C:/Users/Clarence/Downloads/Coursera/Data Science/Course 4/Week 1")
	hpc <- read.table("household_power_consumption.txt", header=TRUE, sep = ";", na.strings = "?", colClasses = c("character","character", "factor", "factor", "factor", "factor", "factor", "factor", "factor"))
	hpc <- subset(hpc, Date == "1/2/2007" | Date == "2/2/2007")
	hpc$DateTime <- paste(hpc$Date, hpc$Time, sep = " ")
	hpc$DateTime <- strptime(hpc$DateTime, format = "%d/%m/%Y %H:%M:%S")
	png(file = "plot2.png")
	plot(hpc$DateTime, as.numeric(hpc$Global_active_power), type = "l", ylab = "Global Active Power (kilowatts)", xlab = NA)
	dev.off()
}