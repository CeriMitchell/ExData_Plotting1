## EXPLORATORY DATA ANALYSIS - WEEK 1 - Assignment "Course Project 1"
## Plot2
mydata <- "/Users/cerimitchell/Desktop/Coursera/004 - Exploratory Data Analysis/Course Project 1/household_power_consumption.txt"
data <- read.table(mydata, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
sub_set_data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
View(sub_set_data)

date_time <- strptime(paste(sub_set_data$Date, sub_set_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
global_active_power <- as.numeric(sub_set_data$Global_active_power)
png("plot2.png", width=480, height=480)
plot(date_time, global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()