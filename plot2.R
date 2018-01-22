# Assignment 1 for Coursera Exploratory Data Analysis
# By Varun Poddar
# Date: Jan 21 2018

#load and read 2-day data 
fileDestination <- "./data-test/household_power_consumption.txt"
powerData <- read.csv(fileDestination, header=TRUE, sep=";", na.strings = "?", check.names = FALSE, stringsAsFactors = FALSE, comment.char = "")
subPowerData <- subset(powerData, Date %in% c("1/2/2007", "2/2/2007"))

#set the right date / time zone classes
subPowerData$Date <- as.Date(subPowerData$Date, format="%d/%m/%Y")
subPowerData$datetime <- as.POSIXct(paste(as.Date(subPowerData$Date), subPowerData$Time))

#plotting the graph
png("plot2.png", width=480, height=480)
with(subPowerData, plot(x=subPowerData$datetime, y=subPowerData$Global_active_power, type="l", xlab = "", ylab="Global Active Power (kilowatts)"))
dev.off()
