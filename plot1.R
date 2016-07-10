library(dplyr)
library(caret)
power_data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

col_names <- names(power_data)
num_rows <- nrow(power_data)
num_cols <- ncol(power_data)
test_data <- power_data[data$Date %in% c("1/2/2007","2/2/2007") ,]
nrow(test_data)
png("plot1.png", width=480, height=480)
hist(as.numeric(test_data$Global_active_power),col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)" )
dev.off()

