## EXPLORATORY DATA ANALYSIS - WEEK 1 - Assignment "Course Project 1"
## Plot1
mydata <- "/Users/cerimitchell/Desktop/Coursera/004 - Exploratory Data Analysis/Course Project 1/household_power_consumption.txt"
data <- read.table(mydata, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
sub_set_data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
View(sub_set_data)

global_active_power <- as.numeric(sub_set_data$Global_active_power)
png("plot1.png", width=480, height=480)
hist(global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)",
                ylab="Frequency")
dev.off()