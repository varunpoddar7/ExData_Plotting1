# Assignment 1 for Coursera Exploratory Data Analysis
# By Varun Poddar
# Date: Jan 21 2018

#load and read 2-day data 
fileDestination <- "./household_power_consumption.txt"
powerData <- read.csv(fileDestination, header=TRUE, sep=";", na.strings = "?", check.names = FALSE, stringsAsFactors = FALSE, comment.char = "")
subPowerData <- subset(powerData, Date %in% c("1/2/2007", "2/2/2007"))

#set the right date / time zone classes
subPowerData$Date <- as.Date(subPowerData$Date, format="%d/%m/%Y")

#plotting the histogram
hist(as.numeric(subPowerData$Global_active_power), main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="red")
png("plot1.png", width=480, height=480)
dev.off()
