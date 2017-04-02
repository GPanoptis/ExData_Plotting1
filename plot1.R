## Plot 1

# load and read data
dataFile <- "./data/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

# subset based on Date
sub_data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(sub_data)
globalActivePower <- as.numeric(sub_data$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()