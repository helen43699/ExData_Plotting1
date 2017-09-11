# Student: Ying Alvarado
# Project 1 for Exploratory Data Analysis.  Please see README.md for details.
# 
setwd("C:/Users/helen43699/Documents/Exploratory Data Analysis/workdir")
#
# URL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
#
file <- "./data/household_power_consumption.txt"
allData <- read.table(file, header = T, sep=";",na.strings="?")
data <- subset(allData,allData$Date %in% c("1/2/2007","2/2/2007"))
DT <-strptime(paste(data$Date, data$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
data <-cbind(DT,data)
#
#Plot 4
lineColor <- c("black","red","blue")
label <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
plot(data$DT, data$Sub_metering_1, type="l", col=lineColor[1], xlab="", ylab="Energy sub metering")
lines(data$DT,data$Sub_metering_2,col=lineColor[2])
lines(data$DT,data$Sub_metering_3,col=lineColor[3])
legend("topright", legend=label, col=lineColor, lty="solid")
dev.copy(png, file="plot4.png", width=480, height=480)
dev.off()

