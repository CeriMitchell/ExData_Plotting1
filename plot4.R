## EXPLORATORY DATA ANALYSIS - WEEK 1 - Assignment "Course Project 1"
## Plot4
mydata <- "/Users/cerimitchell/Desktop/Coursera/004 - Exploratory Data Analysis/Course Project 1/household_power_consumption.txt"
data <- read.table(mydata, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
sub_set_data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
View(sub_set_data)

date_time <- strptime(paste(sub_set_data$Date, sub_set_data$Time, sep=" "))
global_active_power <- as.numeric(sub_set_data$Global_active_power)
voltage <- as.numeric(sub_set_data$Voltage)
sub_metering_1 <- as.numeric(sub_set_data$Sub_metering_1)
sub_metering_2 <- as.numeric(sub_set_data$Sub_metering_2)
sub_metering_3 <- as.numeric(sub_set_data$Sub_metering_3)
global_reactice_power <- as.numeric(sub_set_data$Global_reactive_power)
png("plot4.png", width=480, height=480)

par(mfrow = c(2, 2))
plot(date_time, global_active_power, type="l", xlab="", ylab="Global Active Power")

plot(date_time, voltage, type="l", xlab="datetime", ylab="Voltage")

plot(date_time, sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(date_time, sub_metering_2, type="l", col="red")
lines(date_time, sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

plot(date_time, global_reactice_power, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()