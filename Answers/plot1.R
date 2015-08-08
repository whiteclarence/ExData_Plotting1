plot1 <- function() {
	setwd("C:/Users/Clarence/Downloads/Coursera/Data Science/Course 4/Week 1")
	hpc <- read.table("household_power_consumption.txt", header=TRUE, sep = ";", na.strings = "?", colClasses = c("character","character", "factor", "factor", "factor", "factor", "factor", "factor", "factor"))
	hpc <- subset(hpc, Date == "1/2/2007" | Date == "2/2/2007")
	strptime(hpc$Date, "%d/%m/%y")	
	strptime(hpc$Time, "%H:%M:%S")
	png(file = "plot1.png")
	hist(as.numeric(hpc$Global_active_power), col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
	dev.off()
}