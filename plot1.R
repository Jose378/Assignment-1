data <- read.table("household_power_consumption.txt", header= TRUE, sep= ";", stringsAsFactors = FALSE)
head(data)
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
classes<- sapply(data, class)
classes
data_2007 <- subset(data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(data)
head(data_2007)
classes<- sapply(data_2007, class)
classes
globalActivePower <- as.numeric(data_2007$Global_active_power)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
