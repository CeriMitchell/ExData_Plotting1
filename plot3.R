## EXPLORATORY DATA ANALYSIS - WEEK 1 - Assignment "Course Project 1"
## Plot3
mydata <- "/Users/cerimitchell/Desktop/Coursera/004 - Exploratory Data Analysis/Course Project 1/household_power_consumption.txt"
data <- read.table(mydata, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
sub_set_data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
View(sub_set_data)

date_time <- strptime(paste(sub_set_data$Date, sub_set_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
sub_metering_1 <- as.numeric(sub_set_data$Sub_metering_1)
sub_metering_2 <- as.numeric(sub_set_data$Sub_metering_2)
sub_metering_3 <- as.numeric(sub_set_data$Sub_metering_3)
png("plot3.png", width=480, height=480)
plot(date_time, sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(date_time, sub_metering_2, type="l", col="red")
lines(date_time, sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()