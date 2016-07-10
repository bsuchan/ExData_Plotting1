library(dplyr)
power_data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
test_data <- power_data[power_data$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(test_data$Global_active_power)
daysofweek <- strptime(paste(test_data$Date, test_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
plot(daysofweek,globalActivePower, type="l", xlab="", ylab="Global Active Power", cex=0.2)
dev.off()


