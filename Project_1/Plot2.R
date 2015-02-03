dataFile <- "household_power_consumption.txt"
fullData <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subData <- fullData[fullData$Date %in% c("1/2/2007","2/2/2007") ,]

#plotting
globalActivePower <- as.numeric(subData$Global_active_power)
datetime <- strptime(paste(subData$Date, subData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
