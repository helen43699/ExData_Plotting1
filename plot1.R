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
#Plot 1
hist(data$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()

